## PL/0 Compiler

### Description
Lex Parser
*.l => lex.yy.c => output p

### Compile
compiler option for 64bit macOS

gcc -o naming y.tab.c -ll -std=gnu89

### Execution
$> echo "1234567890" | ./result


## BISON

##### YACC는 Yet Another Compiler Compiler의 약자로 컴파일러를 생성을 위한 프로그램 이다. 
compiler-generator 혹은 compiler-compiler이라고 부르기도 한다. yacc는 lex에 의해서 얻어진 token들의 관계를 구성하는 "구문분석기"를 생성하는 툴이다. yacc가 내부적으로 token을 얻기 위해서 lex를 사용하는데, lex와 yacc, flex와 bison을 한 묶음으로 해서 다루는 이유가 된다. lex를 호출하기 때문에 lex의 상위에 위치하게 된다. Bison은 이러한 일을 하는 YACC의 GNU버젼이며, 하는일 옵션등에 있어서 거의 동일하다.
Bison(yacc)는 BNF (Backus Naur Form)을 이용해서 필요한 일을 수행한다. 이 기술은 John Backus 와 Peter Naur에 의해서 만들어 졌으며 ALGOL60 언어를 제작하는데 사용되었다. BNF 문법은 자유로운 문맥(context-free) 언어를 표현하는데 유용하게 사용할 수 있다. 현대의 대부분의 프로그래밍 언어는 BNF를 이용해서 문맥을 표현하고 있다.

## 참고문헌
https://www.joinc.co.kr/w/Site/Development/Env/Yacc#AEN284