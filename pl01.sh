#!/bin/bash

flex pl01.l

gcc -o pl01 lex.yy.c -ll -std=gnu89

./pl01 < input.l