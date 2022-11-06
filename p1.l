%{
}%

%%

[+]?[0-9]+ {printf ("no. is Positive");}
[-]{1}[0-9]+ { printf ("no. is Negative");}

%%

int main()
{
printf("Enter any Decimal No.");
yylex();
}
int yywrap(){return(1);}

