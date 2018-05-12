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
	printf( "%8d %8d %8d\n", lc, wc, cc );
	}

/*
yywrap() {
	return(1);
	}
*/
