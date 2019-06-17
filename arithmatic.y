%{
#include <stdlib.h>
%}
%token num id op
%%
start: '='S';' {return 0;}
S: id x|num x|'-' num x|'(' S ')' x|'(' '-' S ')' x 
x: op S|'-' x| ;
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
