MAIN = src/main.pas
MATRIZ = src/Matriz.pas
OBJ_DIR = obj
BIN_DIR = bin
EXEC = $(BIN_DIR)/MultiplicacaoMatrizes

all: $(EXEC)

$(EXEC): $(MAIN) $(MATRIZ)
	fpc -o$(EXEC) $(MAIN)
	mv $(BIN_DIR)/*.ppu $(OBJ_DIR)/
	mv $(BIN_DIR)/*.o $(OBJ_DIR)/

clean:
	rm -rf $(OBJ_DIR)/* $(BIN_DIR)/*