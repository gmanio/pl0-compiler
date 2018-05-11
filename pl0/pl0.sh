rm -rf lex.yy.c pl0.tab.c pl0.tab.h

flex pl0.l
bison pl0.y

#gcc pl0.tab.c -ll -o pl0 -std=gnu89

#gcc -o pl0-compiler lex.yy.c -ll -std=gnu89