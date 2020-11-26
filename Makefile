#Makefile for "imd0030" C++ application

BIN = ./bin
SRC = ./src
INC = ./include

PROG = $(BIN)/programa
CC = g++
CPPFLAGS = -Wall -std=c++11 -I./include

OBJS = $(BIN)/animal.o $(BIN)/anfibio.o $(BIN)/ave.o $(BIN)/mamifero.o $(BIN)/reptil.o $(BIN)/profissional.o $(BIN)/tratador.o $(BIN)/veterinario.o $(BIN)/petfera.o $(BIN)/main.o

all : $(OBJS)
	$(CC) $(OBJS) -o $(PROG)

debug: CPPFLAGS += -DDEBUG -g -O0
debug: clean all

$(BIN)/main.o : $(SRC)/main.cpp
	$(CC) $(CPPFLAGS) -c $(SRC)/main.cpp -o $@
$(BIN)/petfera.o : $(SRC)/petfera.cpp $(INC)/petfera.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/petfera.cpp -o $@
$(BIN)/veterinario.o : $(SRC)/veterinario.cpp $(INC)/veterinario.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/veterinario.cpp -o $@
$(BIN)/tratador.o : $(SRC)/tratador.cpp $(INC)/tratador.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/tratador.cpp -o $@
$(BIN)/profissional.o : $(SRC)/profissional.cpp $(INC)/profissional.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/profissional.cpp -o $@
$(BIN)/reptil.o : $(SRC)/reptil.cpp $(INC)/reptil.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/reptil.cpp -o $@
$(BIN)/mamifero.o : $(SRC)/mamifero.cpp $(INC)/mamifero.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/mamifero.cpp -o $
$(BIN)/ave.o : $(SRC)/ave.cpp $(INC)/ave.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/ave.cpp -o $
$(BIN)/anfibio.o : $(SRC)/anfibio.cpp $(INC)/anfibio.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/anfibio.cpp -o $
$(BIN)/animal.o : $(SRC)/animal.cpp $(INC)/animal.hpp 
	$(CC) $(CPPFLAGS) -c $(SRC)/animal.cpp -o $
clean:
	rm -f core $(PROG) $(OBJS)
