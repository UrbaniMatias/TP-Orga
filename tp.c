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
const int ERROR = -1;
#define FORMATO_PATH "/proc/%d/maps"
#define FORMATO_ESCRITURA "r"
#define TAMANIO_PIPE 2
#define TAMANIO_BUF 64
#define TAMANIO_PATH 64
#define CARACTERES_CLAVE_STRING 16

const int DIRECCION_CLAVE_1 = 0x1738;
const int DIRECCION_CLAVE_2 = 0x1c;
const int DIRECCION_CLAVE_3 = 0x17f7;
const int DIRECCION_CLAVE_4 = 0x1877;
const int DIRECCION_CLAVE_5 = 0x18d9;
const int DIRECCION_CLAVE_6 = 0x3c;

 /*
  * Pre-condiciones:    pipe_fd no debe ser null.
  * Post-condiciones:   Retorna el identificador de proceso para trazar con ptrace.
  */
pid_t lanzar_proceso_bomba(int *pipe_fd) {
    if(!pipe_fd) {
        printf("Error en la función lanzar proceso. pipe_fd es null.");
        return ERROR;
    }

    if(pipe(pipe_fd) == ERROR) {
        printf("Error en la función lanzar proceso. Falló la función pipe().");
        return ERROR;
    }

    pid_t pid = fork();
    if (pid == 0) {
        dup2(pipe_fd[LECTURA], STDIN_FILENO);
        close(pipe_fd[LECTURA]);
        close(pipe_fd[ESCRITURA]);
        ptrace(PTRACE_TRACEME, 0, NULL, NULL);
        execl(BOMBA, BOMBA, NULL);
        perror("execl falló en la función lanzar_proceso_bomba.");
        exit(ERROR);
    }
    close(pipe_fd[LECTURA]);
    return pid;
}

 /*
  * Pre-condiciones:    pipe_fd y respuesta no deben ser null.
  * Post-condiciones:   Escribe la respuesta recibida stdin de la bomba e imprime por pantalla un 
  *                     mensaje indicando que se inyectó la clave.
  */
void escribir_respuesta(int *pipe_fd, const char *respuesta) {
    if(!pipe_fd || !respuesta) {
        return;
    }
    write(pipe_fd[ESCRITURA], respuesta, strlen(respuesta));
    write(pipe_fd[ESCRITURA], "\n", 1);
    printf("Clave inyectada.\n\n");
}

 /*
  * Pre-condiciones:    -
  * Post-condiciones:   Devuelve la dirección base de carga del ejecutable desde /proc/pid/maps.
  */
unsigned long obtener_direccion_base(pid_t pid) {
    char path[TAMANIO_PATH];
    snprintf(path, sizeof(path), FORMATO_PATH, pid);
    FILE *archivo = fopen(path, FORMATO_ESCRITURA);
    if(!archivo) {
        printf("Error al abrir el archivo.");
        return 0;
    }
    unsigned long base = 0;
    fscanf(archivo, "%lx-", &base);
    fclose(archivo);
    return base;
}

 /*
  * Pre-condiciones:    -
  * Post-condiciones: Frena la ejecución en la direccion dada
  */
long set_breakpoint(pid_t pid, unsigned long direccion) {
    long original = ptrace(PTRACE_PEEKDATA, pid, (void*)direccion, NULL);
    long trap = (original & ~0xFF) | 0xCC;
    ptrace(PTRACE_POKEDATA, pid, (void*)direccion, (void*)trap);
    return original;
}

 /*
  * Pre-condiciones:    -
  * Post-condiciones:   Elimina el breakpoint
  */
void remove_breakpoint(pid_t pid, unsigned long direccion, long original) {
    ptrace(PTRACE_POKEDATA, pid, (void*)direccion, (void*)original);
}

 /*
 * Pre-condiciones: regs no debe ser null.
 * Post-condiciones: Se dejó correr a la bomba hasta que llegó al breakpoint en bp_addr y frena ahí. Se guardaron sus registros en regs para poder
 * usarlos despues. Tambien se borro el breakpoint, volvimos a poner la instrucción que habia antes (la habiamos tapado con 0xCC para que la bomba se parara),
 * y se corrigió el RIP para que apunte justo al principio de esa instrucción, asi cuando la bomba siga corriendo la ejecuta bien.
 */
void run_to_breakpoint(pid_t pid, unsigned long bp_addr, long original, struct user_regs_struct *regs) {
    if(!regs) {
        printf("Se recibe un puntero null en run_to_breakpoint.");
        return;
    }
    int status;
    ptrace(PTRACE_CONT, pid, NULL, NULL);
    waitpid(pid, &status, 0);
    ptrace(PTRACE_GETREGS, pid, NULL, regs);
    remove_breakpoint(pid, bp_addr, original);
    regs->rip = bp_addr;
    ptrace(PTRACE_SETREGS, pid, NULL, regs);
}

 /*
  * Pre-condiciones:    -
  * Post-condiciones:   Imprime por pantalla el valor de la clave con su número correspondiente.
  */
void mostrar_clave(int numero_clave, char *valor) {
    printf("Clave %i: %s\n", numero_clave, valor);
}

 /*
  * Pre-condiciones:    regs no debe ser null.
  *                     direccion es el valor que se debe sumar a la base para obtener el bp.
  * Post-condiciones:   Devuelve el entero almacenado en el registro r15d, al momento en que se llega al bp.
  */
int obtener_clave_entero_1(pid_t pid, unsigned long base, struct user_regs_struct *regs, int direccion) {
    if(!regs) {
        return ERROR;
    }
    unsigned long bp = base + direccion;
    long original = set_breakpoint(pid, bp);
    run_to_breakpoint(pid, bp, original, regs);

    return (int)regs->r15;
}

 /*
  * Pre-condiciones:    regs no debe ser null.
  *                     direccion es el valor que se debe sumar a la base para obtener el bp.
  * Post-condiciones:   Devuelve el entero almacenado en el registro rbx, al momento en que se llega al bp.
  */
int obtener_clave_entero_3_5(pid_t pid, unsigned long base, struct user_regs_struct *regs, int direccion) {
    if(!regs) {
        return ERROR;
    }
    unsigned long bp = base + direccion; 
    long original = set_breakpoint(pid, bp);
    run_to_breakpoint(pid, bp, original, regs);
    return (int)regs->rbx;
}

 /*
  * Pre-condiciones:    regs no debe ser null.
  *                     direccion es el valor que se debe sumar al rsp para obtener el bp.
  * Post-condiciones:   Devuelve el entero almacenado en el registro rbx, al momento en que se llega al bp.
  */
float obtener_clave_float(pid_t pid, struct user_regs_struct *regs, int direccion) {
    if(!regs) {
        return ERROR;
    }
    unsigned long addr = regs->rsp + direccion;
    long raw = ptrace(PTRACE_PEEKDATA, pid, (void*)addr, NULL);
    float clave;
    memcpy(&clave, &raw, sizeof(float));
    return clave;
}

 /*
  * Pre-condiciones:    clave y regs no deben ser null.
  *                     direccion es el valor que se debe sumar a la base para obtener el bp.
  * Post-condiciones:   Copia la clave encontrada en el parámetro clave recibido.
  */
void obtener_clave_string(pid_t pid, unsigned long base, struct user_regs_struct *regs, char *clave, int direccion) {
    if(!regs || !clave) {
        return;
    }
     unsigned long bp = base + direccion;
    long original = set_breakpoint(pid, bp);
    run_to_breakpoint(pid, bp, original, regs);

    for (int i = 0; i < CARACTERES_CLAVE_STRING; i++) {
        unsigned long addr = regs->rsp + 0x50 + i;
        long letra = ptrace(PTRACE_PEEKDATA, pid, (void*)addr, NULL);
        memcpy(clave + i, &letra, 1);
    }
}

//----------------------------------------------------------------------------------------

int main() {
    int pipe_fd[TAMANIO_PIPE];

    pid_t pid = lanzar_proceso_bomba(pipe_fd);
    if(pid==ERROR) {
        printf("Error al obtener el identificador de proceso.");
        return ERROR;
    }

    int status;
    waitpid(pid, &status, 0);

    unsigned long base = obtener_direccion_base(pid);

    struct user_regs_struct regs;
    char buf[TAMANIO_BUF];

    int clave_1 = obtener_clave_entero_1(pid, base, &regs, DIRECCION_CLAVE_1);
    snprintf(buf, sizeof(buf), "%d", clave_1);
    mostrar_clave(1, buf);
    escribir_respuesta(pipe_fd, buf);

    float clave_2 = obtener_clave_float(pid, &regs, DIRECCION_CLAVE_2);
    snprintf(buf, sizeof(buf), "%f", clave_2);
    mostrar_clave(2, buf);
    escribir_respuesta(pipe_fd, buf);

    int clave_3 = obtener_clave_entero_3_5(pid, base, &regs, DIRECCION_CLAVE_3);
    snprintf(buf, sizeof(buf), "%d", clave_3);
    mostrar_clave(3, buf);
    escribir_respuesta(pipe_fd, buf);

    char clave_4[CARACTERES_CLAVE_STRING];
    obtener_clave_string(pid, base, &regs, clave_4, DIRECCION_CLAVE_4);
    mostrar_clave(4, clave_4);
    escribir_respuesta(pipe_fd, clave_4);

    int clave_5 = obtener_clave_entero_3_5(pid, base, &regs, DIRECCION_CLAVE_5);
    snprintf(buf, sizeof(buf), "%d", clave_5);
    mostrar_clave(5, buf);
    escribir_respuesta(pipe_fd, buf);

    float clave_6 = obtener_clave_float(pid, &regs, DIRECCION_CLAVE_6);
    snprintf(buf, sizeof(buf), "%f", clave_6);
    mostrar_clave(6, buf);
    escribir_respuesta(pipe_fd, buf);

    fflush(stdout);
    ptrace(PTRACE_CONT, pid, NULL, NULL);

    int w;
    do {
        waitpid(pid, &w, 0);
    } while (!WIFEXITED(w) && !WIFSIGNALED(w));
    return 0;
}