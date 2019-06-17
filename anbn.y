%{
#include <stdlib.h>
%}
%token A B
%%
str: S'\n' {return 0;}
S: A S B|A B
%%

int main() {
	printf("Enter string: ");
	yyparse();
	printf("Valid");
}
yyerror () {
	printf("Invalid Input");
	exit(0);
}
