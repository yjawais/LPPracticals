
%{
int positive_no = 0, negative_no = 0;
%}

/* Rules for identifying and counting
positive and negative numbers*/
%%
^[-][0-9]+ {
			printf("negative number = %s\n",
				yytext);} // negative number

[0-9]+ {
		printf("positive number = %s\n",
				yytext);} // positive number	
%%

/*** use code section ***/

int yywrap(){}
int main()											
{

yylex();

return 0;
}
