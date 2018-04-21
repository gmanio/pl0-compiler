#!/bin/bash

flex numstr.l

gcc -o number lex.yy.c -ll -std=gnu89

echo "1234567890 tesfdsdf" | ./number