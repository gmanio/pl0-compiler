#!/bin/bash
rm -rf lex.yy.c cal.tab.c cal.tab.h

flex cal.l
bison -d cal.y

gcc lex.yy.c cal.tab.c -o cal -std=gnu89