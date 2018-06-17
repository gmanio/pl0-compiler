/* lex-based "wc" tool. */

%{
	int cc = 0, wc = 0, lc = 0;
%}

ws    [ \t]
nonws [^ \t\n]

%%

{nonws}+	cc += yyleng; ++wc;

{ws}+		cc += yyleng;

\n		++lc; ++cc;

%%

main() {
	yylex();
	printf( "*************** Result ****************\n\n");
	printf( "LC(Line) :: WC(Word) :: CC(Characters)\n");
	printf( "%8d %8d %8d\n\n", lc, wc, cc );
	printf( "*************** Result ****************\n");	}
/*
yywrap() {
	return(1);
	}
*/
