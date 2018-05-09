rm -rf lex.yy.c cal.tab.c cal.tab.h

#flex pl0.l
#bison -d pl0.y

#gcc lex.yy.c pl0.tab.c -o pl0 -std=gnu89

#gcc -o pl0-compiler lex.yy.c -ll -std=gnu89