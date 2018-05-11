%{
%}
%option noyywrap
%%
[ \t] ;
"odd" 		{ return ODD;}
"const"	 { return TCONST; }
"var" 		{ return TVAR; }
"procedure" 	{ return TPROC; }
"call"		{ return TCALL; }
"begin"	{ return TBEGIN; }
"end"		{ return TEND; }
"if"		{ return TIF; }
"then"		{ return TTHEN; }
"while"		{ return TWHILE; }
"do"		{ return TDO; }
":="		{ return ASSIGN; }
"!="		{ return NE; }
"<="		{ return LE; }
">="		{ return GE; }
[0-9]+  	{ return NUM; }
[a-zA-Z][a-zA-Z0-9]*	{ return ID; }
.		{ return yytext[0]; } ;
[\n]		;
%%

	