#include <stdio.h>
#include <stdlib.h>

#define ARCHIVO "Bomba"
#define MODO_LECTURA "rb"
const int ERROR = -1;

int main () {
    FILE *archivo = fopen(ARCHIVO, MODO_LECTURA);
    if (archivo == NULL) {
        return ERROR;
        printf("No se pudo abrir el archivo %s\n", ARCHIVO);
    }
    

    char buffer;

    int i = 0;

    while(fread(&buffer, 1, 1, archivo) == 1) {
        printf("%x", buffer);

        if(i%16==0) {
            printf("\n");
        }
        i++;
    }
    fclose(archivo);
    return 0;
}