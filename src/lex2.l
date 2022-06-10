%{ 
/*codigo colocado aqui aparece no arquivo gerado pelo flex*/ 
%} 

/* This tells flex to read only one input file */ 
%option noyywrap 

/* definicoes regulares */ 

letter [a-z]
uppercase [A-Z]
digit [0-9]
vowel [aeiou]
uppervowel [AEIOU]
uppersqvw [{uppervowel}]?({uppercase})*[{uppervowel}]({uppercase})*[{uppervowel}]?
comment [\/\*](.*)[\*\/]
digitnotrepeat [({digit})1{2}]
email [a-z0-9]+[_a-z0-9\.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})
cpf {digit}{3}\.{digit}{3}\.{digit}{3}\-{digit}{2}
date (([1-2]{digit})|([1-9])|(3[0-1]))\/((1[0-2])|([1-9]))\/{digit}{4}
/* (< | > | <= | => | = | !=) */ 
relop (\<|\>|\<\=|\=\>|\=|\!\=)

%% 

{email} {printf("\nFoi encontrado um email. LEXEMA: %s", yytext);}
{uppersqvw} {printf("\nFoi encontrado uma sequencia de letras maiusculas com vogais em sequencia. LEXEMA: %s", yytext);}
{comment} {printf("\nFoi encontrado uma sequencia de comentário. LEXEMA: %s", yytext);}
{cpf} {printf("\nFoi encontrado um CPF. LEXEMA: %s", yytext);}
{date} {printf("\nFoi encontrado uma data. LEXEMA: %s", yytext);}
{relop} {printf("\nFoi encontrado um operador relacional. LEXEMA: %s", yytext);}
. ;
[ \t\n]+ ;

%% 

/*codigo em C. Foi criado o main, mas podem ser criadas outras funcoes aqui.*/ 

int main(void) 
{ 
    /* Call the lexer, then quit. */ 
    yylex(); 
    printf("\n");
    return 0; 
}
