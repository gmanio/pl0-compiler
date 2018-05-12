#!/bin/bash

flex wc.l

gcc -o compiler lex.yy.c -ll -std=gnu89

echo "1234567890" | ./compiler