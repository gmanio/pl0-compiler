%{
int ln=1, cp=0;
%}
%token TCONST TVAR TPROC TCALL TBEGIN TIF TTHEN TWHILE TDO TEND 
%token ID NUM ODD NE LE GE ASSIGN
%%
Program: Block '.' {printf(" ==== valid syntax ====")} ;
Block: ConstDec VarDec ProcDef_list Statement ;
ConstDec:
	| TCONST Constdef_list ';' ;
Constdef_list: Constdef_list ',' ID '=' NUM
	| ID '=' NUM ;
VarDec: TVAR Ident_list ';'
	|	;
Ident_list: Ident_list ',' ID
	 | ID ;
ProcDef_list: ProcDef_list ProcDef
	| 	 ;
ProcDef: TPROC ID ';' Block ';' ;
Statement: ID ASSIGN Expression
	| TCALL ID
	| TBEGIN Statement_list TEND
	| TIF Condition TTHEN Statement
	| TWHILE Condition TDO Statement 
	|	;
Statement_list: Statement_list ';' Statement
	| Statement ;
Condition: ODD Expression
	| Expression RelOp Expression ;
RelOp: '=' | NE | '<' | '>' | LE | GE ;
Expression: Expression '+' Term
	| Expression '-' Term
	| Term ;
Term: Term '*' Factor
	| Term '/' Factor
	| Factor ;
Factor: ID
	| NUM
	| '(' Expression ')' ;
	
%%
#include "lex.yy.c"
yyerror(s) {
	printf("line: %d cp: %d %s\n", ln, cp, s);
}
main() {
	return yyparse();
}
