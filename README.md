# TP0 CCF441 - Compiladores

Este trabalho tem como objetivo introduzir a ferramenta flex (um lex mais recente). Criando analisadores léxicos para reconhecer tokens conforme definido pelo professor na [especificação](https://docs.google.com/document/d/1ttcX5j1OEAeMdPYvS8NnV4gwbm3pe0waHM0wlEPaE_M/edit) do trabalho.


## Descrição

Nesse trabalho devemos contruir dois arquivos lex para reconhecer padrões. O primeiro chamado *lex.l* deve conter as definições listadas na especificação do trabalho, e rodar os casos testes esperados. O segundo deve conter as expressões regulares definidas por mim e especificadas no relatório a ser entregue.

- [x] lex.l
- [ ] lex2.l

## To-do

Padrões a serem reconhecidos pelo seu analisador léxico:

- [x] Espaços em branco, tabulação e quebra de linha devem ser ignorados.
- [x] Número inteiro positivo: qualquer sequencia de um ou mais dígitos, precedidos ou não do símbolo +.
- [x] Número inteiro negativo: qualquer sequencia de um ou mais dígitos, precedidos do símbolo -.
- [x] Número decimal: qualquer sequencia de um ou mais dígitos seguida de um ponto (.) e de outra sequencia de um ou mais dígitos.  Obs.: o número decimal também pode ser positivo ou negativo.
- [x] Placa: três letras maiúsculas seguidas de um hífen (mesmo caractere dos números negativos) e de 4 dígitos.
- [x] Palavra: qualquer sequencia de uma ou mais letras maiúsculas ou minúsculas (sem caractere especial ou letras acentuadas).
- [x] Telefone: 4 dígitos seguidos de um hífen (mesmo caractere dos números negativos) e de mais 4 dígitos.
- [x] Nome próprio: três ou quatro palavras, tendo necessariamente e exatamente um espaço em branco entre cada par dessas palavras. Um espaço ao final não é necessário.

No arquivo lex2.l você deve fazer um analisador léxico que reconheça outros padrões de lexema, definidos por você, e explicados no relatório.

Padrões a serem reconhecidos pelo lex2:

- [ ] Todas as palavras de letras minusculas que contem os cinco vogais em ordem
- [ ]  todas as cadeias de caracteres que estão na ordem alfabetica corretamente
- [ ] um comentário na na forma /* alguma coisa */
- [ ] todas as cadeias de digitos sem digitos repetidos
- [ ] todas as cadeias com no maximo um digito repetido
- [ ] todas as cadas de as e bs com um numero par de as e um numero impar de bs
- [ ] todas as cadeias de caracters com um formato de cpf (111.111.111-11)
- [ ] todas as cadeias de caractesr que casam com o a palvra-chave - 'const'
- [ ] todas as cadeias de caracters que representam operadores relacionais (< | > | <= | => | = | !=)