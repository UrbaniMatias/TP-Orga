#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/user.h>

#define BOMBA "./Bomba"
#define LECTURA 0
#define ESCRITURA 1
const int ERROR_FORK = -1;
const int ERROR_EXECL = 1;

#define TAMANIO_PIPE 2
#define TAMANIO_BUF 64

 /*
  * Precondiciones: -
  * Postcondiciones: (Lanza la bomba como proceso hijo trazado por ptrace,
  * redirigiendo su stdin a un pipe que controlamos.)
  */
pid_t launch_bomb(int *pipe_fd) {
    pipe(pipe_fd);
    pid_t pid = fork();
    if (pid == 0) {
        dup2(pipe_fd[LECTURA], STDIN_FILENO);
        close(pipe_fd[LECTURA]);
        close(pipe_fd[ESCRITURA]);
        ptrace(PTRACE_TRACEME, 0, NULL, NULL);
        execl(BOMBA, BOMBA, NULL);
        perror("execl falló en la función launch_bomb.");
        exit(ERROR_EXECL);// cambio por constante.
    }
    close(pipe_fd[LECTURA]);
    return pid;
}

/* Escribe una respuesta + salto de linea en el stdin de la bomba,
 * y la muestra en pantalla para que el output quede legible. */
void inject_answer(int *pipe_fd, const char *answer) {
    write(pipe_fd[ESCRITURA], answer, strlen(answer));
    write(pipe_fd[ESCRITURA], "\n", 1);
}

/* Lee la direccion base de carga del ejecutable (PIE) desde /proc/pid/maps */ 
unsigned long get_base_address(pid_t pid) {
    char path[64];
    snprintf(path, sizeof(path), "/proc/%d/maps", pid);
    FILE *f = fopen(path, "r");
    unsigned long base = 0;
    fscanf(f, "%lx-", &base);
    fclose(f);
    return base;
}

/* Inserta un breakpoint (0xCC / int3) en addr, devuelve el byte original */
long set_breakpoint(pid_t pid, unsigned long addr) {
    long orig = ptrace(PTRACE_PEEKDATA, pid, (void*)addr, NULL);
    long trap = (orig & ~0xFF) | 0xCC;
    ptrace(PTRACE_POKEDATA, pid, (void*)addr, (void*)trap);
    return orig;
}

/* Restaura el byte original, eliminando el breakpoint */
void remove_breakpoint(pid_t pid, unsigned long addr, long orig) {
    ptrace(PTRACE_POKEDATA, pid, (void*)addr, (void*)orig);
}

/* Continua la ejecucion hasta golpear el breakpoint en bp_addr.
 * Al volver: deja los registros en regs, restaura el byte original
 * y corrige RIP para que apunte de nuevo a bp_addr (sin el 0xCC). */
void run_to_breakpoint(pid_t pid, unsigned long bp_addr, long orig,
                       struct user_regs_struct *regs) {
    int status;
    ptrace(PTRACE_CONT, pid, NULL, NULL);
    waitpid(pid, &status, 0);
    ptrace(PTRACE_GETREGS, pid, NULL, regs);
    remove_breakpoint(pid, bp_addr, orig);
    regs->rip = bp_addr;
    ptrace(PTRACE_SETREGS, pid, NULL, regs);
}

//----------------------------------------------------------------------------------------
int main() {
    int pipe_fd[TAMANIO_PIPE];

    pid_t pid = launch_bomb(pipe_fd);
    if(pid==ERROR_FORK) {
        printf("Error al obtener el proccess ID.");
        return pid;
    }

    int status;
    waitpid(pid, &status, 0); // SIGTRAP inicial post-execve // por qué 0?

    unsigned long base = get_base_address(pid);

    struct user_regs_struct regs;
    char buf[TAMANIO_BUF];
    long orig;
    unsigned long bp;
    unsigned long addr;
    long raw;

    /* ============================================================
     *  FASE 1 (entero)
     *  Breakpoint en 0x1735: justo despues de "xor %r14d,%r15d". //por qué 0x1735??
     *  La clave queda en r15 = r14 ^ r15 (valor previo).
     * ============================================================ */
    bp = base + 0x1738;// se pone el breakpoint en 1738 porque es donde r15 ya está modificado y contiene la clave
    orig = set_breakpoint(pid, bp);
    run_to_breakpoint(pid, bp, orig, &regs);

    int clave1 = (int)regs.r15;
    printf("\nClave fase 1: %d\n", clave1);

    snprintf(buf, sizeof(buf), "%d", clave1);
    inject_answer(pipe_fd, buf);

    /* ============================================================
     *  FASE 2 (float)
     *  El valor esperado ya esta calculado desde la inicializacion
     *  y guardado en 0x1c(%rsp). Como rsp es estable, lo leemos
     *  usando el mismo rsp del breakpoint de fase 1 (sin nuevo bp).
     * ============================================================ */
    addr = regs.rsp + 0x1c;
    raw = ptrace(PTRACE_PEEKDATA, pid, (void*)addr, NULL); // en raw quedan un valor de tipo long en hexa y necesitamos float.
    float clave2;
    memcpy(&clave2, &raw, sizeof(float));
    printf("\nClave fase 2: %f\n", clave2);
    snprintf(buf, sizeof(buf), "%f", clave2);
    inject_answer(pipe_fd, buf);

    /* ============================================================
     *  FASE 3 (entero)
     *  Breakpoint en 0x17f7: justo despues de calcular ebx
     *  (clave fase 3), antes del fgets de fase 3.
     *  Lo ponemos ANTES de soltar el proceso para evitar
     *  condiciones de carrera con PTRACE_POKEDATA.
     * ============================================================ */
    bp = base + 0x17f7; //por qué 0x17f7??
    orig = set_breakpoint(pid, bp);
    run_to_breakpoint(pid, bp, orig, &regs);

    int clave3 = (int)regs.rbx;
    printf("\nClave fase 3: %d\n", clave3);

    snprintf(buf, sizeof(buf), "%d", clave3);
    inject_answer(pipe_fd, buf);

    /* ============================================================
     *  FASE 4 (texto)
     *  Breakpoint en 0x1877: justo despues de construir el string
     *  esperado en 0x50(rsp)..0x5f(rsp) (16 bytes, null-terminated).
     * ============================================================ */
    bp = base + 0x1877;
    orig = set_breakpoint(pid, bp);
    run_to_breakpoint(pid, bp, orig, &regs);

    char clave4[16] = {0}; //còmo sabemos que el string es de tamaño 16 (15 caracteres + /0)?
    for (int i = 0; i < 16; i += 8) { // 2 veces
        unsigned long addr4 = regs.rsp + 0x50 + i;
        long word = ptrace(PTRACE_PEEKDATA, pid, (void*)addr4, NULL);
        memcpy(clave4 + i, &word, 8);
    }
    printf("\nClave fase 4: %s\n", clave4);

    inject_answer(pipe_fd, clave4);

    /* ============================================================
     *  FASE 5 (entero)
     *  Breakpoint en 0x18d9: justo despues de calcular ebx
     *  (clave5 = 0x2c(rsp) XOR 0x10(rsp) + r12d XOR r13d),
     *  antes del fgets de fase 5.
     * ============================================================ */
    bp = base + 0x18d9;
    orig = set_breakpoint(pid, bp);
    run_to_breakpoint(pid, bp, orig, &regs);

    int clave5 = (int)regs.rbx;
    printf("\nClave fase 5: %d\n", clave5);

    snprintf(buf, sizeof(buf), "%d", clave5);
    inject_answer(pipe_fd, buf);

    /* ============================================================
     *  FASE 6 (float)
     *  Igual que fase 2: el valor esperado en 0x3c(rsp) ya esta
     *  calculado desde la inicializacion, rsp es estable.
     * ============================================================ */
    addr = regs.rsp + 0x3c;
    raw = ptrace(PTRACE_PEEKDATA, pid, (void*)addr, NULL);
    float clave6;
    memcpy(&clave6, &raw, sizeof(float));
    printf("\nClave fase 6: %f\n", clave6); 
    snprintf(buf, sizeof(buf), "%f", clave6);
    inject_answer(pipe_fd, buf);

    printf("\n====================\n\n");
    fflush(stdout);

    ptrace(PTRACE_CONT, pid, NULL, NULL);

    int w;// qué representa w?
    do {
        waitpid(pid, &w, 0);
    } while (!WIFEXITED(w) && !WIFSIGNALED(w));
    return 0;
}