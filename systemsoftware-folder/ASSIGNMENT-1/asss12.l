%{
#include<stdio.h>
int ch=0;
int words=0;
int spaces=0;
int eof=0;
%}

%%
[\n] {eof++;ch++;}
[^ \t\n]+ {words++;ch+=yyleng;}
[" "] {spaces++;}
%%

int yywrap()
{
  return 1;
}

int main()
{
  printf("enter the string");
  yylex();
  printf("chars %d words %d spaces %d eof %d",ch,words,spaces,eof);
  return 0;
}
