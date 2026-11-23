%{
#include <stdio.h>

int mayusculas = 0;
int minusculas = 0;
int digitos = 0;
int espacios = 0;
%}

%%
[A-Z]       { mayusculas++; }
[a-z]       { minusculas++; }
[0-9]       { digitos++; }
[ \t\n\r]   { espacios++; }
.           { /* Ignorar otros caracteres */ }
%%

int yywrap() {
    return 1;
}

int main() {
    printf("Ingrese un texto:\n");
    yylex();

    printf("\nRESULTADOS:\n");
    printf("Letras mayusculas: %d\n", mayusculas);
    printf("Letras minusculas: %d\n", minusculas);
    printf("Digitos: %d\n", digitos);
    printf("Espacios en blanco: %d\n", espacios);

    return 0;
}
