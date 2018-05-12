#!/bin/bash

# clean before build
rm -rf lex.yy.c pl0.tab.c pl0.tab.h

# make lexical analyser generator
flex pl0.l

# make parser generator
bison pl0.y

# compiler lexical pl0 validator
gcc pl0.tab.c -ll -o pl0 -std=gnu89