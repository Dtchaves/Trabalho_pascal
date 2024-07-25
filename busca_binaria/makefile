SRC = src/main.pas
INC_DIR = include
OBJ_DIR = obj
BIN_DIR = bin
EXEC = $(BIN_DIR)/MainBuscaBinaria

all: $(EXEC)

$(EXEC): $(SRC)
	fpc -I$(INC_DIR) -o$(EXEC) -FE$(OBJ_DIR) $(SRC)

clean:
	rm -rf $(OBJ_DIR)/* $(EXEC)