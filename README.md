## PL/0 Compiler

### Description
Lex Parser
*.l => lex.yy.c => output p

### Compile
compiler option for 64bit macOS

gcc -o result lex.yy.c -ll -std=gnu89

### Execution
$> echo "1234567890" | ./result