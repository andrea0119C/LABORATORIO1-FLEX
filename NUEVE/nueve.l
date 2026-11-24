%{
#include <stdio.h>
int cont[10] = {0};
%}
%%
[0-9]   cont[yytext[0]-'0']++;
.|\n    ;
%%
int main()
{
int i;
yylex();
printf("Digito | Veces\n");
printf("-------+------\n");
for (i = 0; i < 10; i++)
printf("  %d    |  %d\n", i, cont[i]);
return 0;
}
