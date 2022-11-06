#include <conio.h>
#include <stdio.h>
int main()
{
    int t[10][26], i, j, q, n, a;
    char c, ch[10];

    for (i = 0; i < 10; i++)
       { for (j = 0; j < 26; j++)
            t[i][j] = -1;
       }
    q = 0;
    c = 'c';
    t[0][c % 97] = 1;
    c = 'h';
    t[1][c % 97] = 2;
    c = 'a';
    t[2][c % 97] = 3;
    c = 'r';
    t[3][c % 97] = 4;
    c = 'a';
    t[1][c % 97] = 5;
    c = 's';
    t[5][c % 97] = 6;
    c = 'e';
    t[6][c % 97] = 7;
    c = 'i';
    t[0][c % 97] = 8;
    c = 'n';
    t[8][c % 97] = 9;
    c = 't';
    t[9][c % 97] = 10;

    printf("\n enter the string of characters:");
    gets(ch);
    n = strlen(ch);
    
for(i=0;i<10;i++){
        a = ch[i] % 97;
        if (t[q][a] == -1)
        {
        }
        else
        {
            q = t[q][a];
            printf("%c next state is :%d\n", ch[i], q);
        }
}
if(q==4 || q==7 || q==10){
        printf("\n the string is accepted");}
else{
        printf("\n the string is not accepeted");
}
getch();
return 0;
}
