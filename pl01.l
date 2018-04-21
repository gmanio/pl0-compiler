%{
%}
%option noyywrap
%%
[ \t];
"ODD" {printf("ODD\n");}
"CONST" {printf("TCONST\n");}
"VAR" {printf("TVAR\n");}
"PROCEDURE" {printf("PROCEDURE\n");}
"CALL" {printf("TCALL\n");}
"BEGIN" {printf("TBEGIN\n");}
"END" {printf("TEND\n");}
"IF" {printf("TIF\n");}
"THEN" {printf("TTHEN\n");}
"WHILE" {printf("TWHILE\n");}
"DO" {printf("TDO\n");}
":=" {printf("ASSIGN\n");}
"!=" {printf("ANE\n");}
"<=" {printf("LE\n");}
">=" {printf("GE\n");}
[0-9]+ {printf("NUM\n");}
[a-zA-Z][a-zA-Z0-9]* {printf("ID\n");}
.   {ECHO;};
[\n];
%%