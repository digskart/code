%{
    #include<stdio.h>
    #
}

%%

"int"|"float"|"char"|"if"|"else"|"while"|"for"|"return" {printf("keyword: %s\n",yytext);}

[a-zA-Z][a-zA-Z0-9]* {printf("identifiers: %s\n,yytext);}

\n {printf("newlihne\n");}
 
\t {printf("tab\n);}

[ ]+ {printf("whitespaces\n);}

. {printf("characters: %s\n",yytext);}

%%

int main()
{
    yylex();
    return 0;
}