%{
#include <stdio.h>
#include <ctype.h>
%}
%%
[A-Z]   putchar(tolower(yytext[0]));
%%
int main()
{
yylex();
return 0;
}
