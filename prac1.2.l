%{
int nw=0,sl=0,cl=0,sc=0,d=0,wd=0;
%}
%%
\n {nw++;}
[a-z] { sl++;}
[A-Z] {cl++;}
[0-9] {d++;}
([ ]) { sc++;}
[ \t \n]+ {wd++;}
%%
int main()
{
printf("Enter String \n");
yylex();
printf("new line %d",nw);
printf("small letter %d",sl);
printf("capital letter %d",cl);
printf("spaces %d",sc);
printf("digits %d",d);
printf("words %d",wd);
}
int yywrap()
{
return(1);
}
