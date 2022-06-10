#Nome do programa
TARGET = a.out

#diretorios dos arquivos
SRC = ./src

#compilador
CC = gcc

LEX =	lex

lex:
	$(LEX) $(SRC)/lex.l
	$(CC) lex.yy.c
	./$(TARGET) < $(SRC)/entrada.txt

lex2:
	$(LEX) $(SRC)/lex2.l
	$(CC) lex.yy.c
	./$(TARGET) < $(SRC)/entrada2.txt