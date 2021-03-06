#
# Makefile ESQUELETO
#
# DEVE ter uma regra "all" para geração da biblioteca
# regra "clean" para remover todos os objetos gerados.
#
# NECESSARIO adaptar este esqueleto de makefile para suas necessidades.
#
# 

CC=gcc
LIB_DIR=./lib
INC_DIR=./include
BIN_DIR=./bin
SRC_DIR=./src

all: t2fs.o filesystem.o
	ar rcs $(LIB_DIR)/libt2fs.a $(BIN_DIR)/t2fs.o $(BIN_DIR)/filesystem.o $(LIB_DIR)/apidisk.o

t2fs.o:
	$(CC) -c -o $(BIN_DIR)/t2fs.o $(SRC_DIR)/t2fs.c -Wall -lm

filesystem.o:
	$(CC) -c -o $(BIN_DIR)/filesystem.o $(SRC_DIR)/filesystem.c -Wall -lm

clean:
	rm -rf $(LIB_DIR)/*.a $(BIN_DIR)/*.o
