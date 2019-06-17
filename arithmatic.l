%{
#include "y.tab.h"
%}
%%
[A-Za-z_][a-z_A-Z0-9] return id;
[0-9]+(\.[0-9]*)? return num;
[+/*] return op;
. return yytext[0];
\n return 0;
%%
