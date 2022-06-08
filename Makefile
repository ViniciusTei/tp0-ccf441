#Nome do programa
TARGET = a.out

#diretorios dos arquivos
SRC = ./src

#compilador
CC = gcc

LEX =	lex

all:
	$(LEX) $(SRC)/lex.l

run:
	./$(TARGET) < $(SRC)/entrada.txt

gcc:
	$(CC) lex.yy.c