SRC = src/main.pas
INC = include/Matriz.pas
OBJ_DIR = obj
BIN_DIR = bin
EXEC = $(BIN_DIR)/MultiplicacaoMatrizes

all: $(EXEC)

$(EXEC): $(SRC) $(INC)
	fpc -o$(EXEC) -FE$(OBJ_DIR) $(SRC)

clean:
	rm -rf $(OBJ_DIR)/*.o $(EXEC)