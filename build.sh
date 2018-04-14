#!/bin/bash

flex parser.l
gcc -o compiler lex.yy.c -ll -std=gnu89
#./compiler < input.l