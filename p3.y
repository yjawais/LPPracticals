%{
#include<stdio.h>
%}
%token A B
%%
S: T B
|
;
T: T A
|
;
%%
main()
{
printf("Enter string");
if(yyparse()==0)
printf("Its valid string");
}
yyerror( )
{
printf("It’s not valid string"); }
