%{ 
/*codigo colocado aqui aparece no arquivo gerado pelo flex*/ 
%} 

/* This tells flex to read only one input file */ 
%option noyywrap 

/* definicoes regulares */ 

char [a-z]
upper [A-Z]
digit   [0-9]
integer {digit}+
negative [-]{integer}
float   {integer}[.]{integer}
floatnegative {negative}[.]{integer}
placa {upper}{3}[-]{integer}[4]
string ({char}|{upper})+
tel     {digit}{4}[-]{digit}{4}
nome    {upper}({char})+[ ]{upper}({char})+[ ]{upper}({char})+([ ]{upper}({char})+)?
%% 

{tel}     {printf("\nFoi encontrado uma telefone. LEXEMA: %s", yytext);}
{placa}     {printf("\nFoi encontrado uma placa. LEXEMA: %s", yytext);}
{floatnegative}         {printf("\nFoi encontrado um numero decimal negativo. LEXEMA: %s", yytext);}
{float}         {printf("\nFoi encontrado um numero decimal. LEXEMA: %s", yytext);}
{integer}         {printf("\nFoi encontrado um numero inteiro positivo. LEXEMA: %s", yytext);}
{negative}         {printf("\nFoi encontrado um numero inteiro negativo. LEXEMA: %s", yytext);}
{nome}     {printf("\nFoi encontrado um nome próprio. LEXEMA: %s", yytext);}
{string}    {printf("\nFoi encontrada uma palavra qualquer. LEXEMA: %s", yytext);}
[ \t\n]+    {/*nenhuma acao e nenhum retorno quando econtrar espaços em branco*/} 

%% 

/*codigo em C. Foi criado o main, mas podem ser criadas outras funcoes aqui.*/ 

int main(void) 
{ 
    /* Call the lexer, then quit. */ 
    yylex(); 
    printf("\n");
    return 0; 
}
