MAIN = src/main.pas
MATRIZ = src/Matriz.pas
OBJ_DIR = obj
BIN_DIR = bin
EXEC = $(BIN_DIR)/MultiplicacaoMatrizes

all: $(BIN_DIR) $(OBJ_DIR) $(EXEC)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(EXEC): $(MAIN) $(MATRIZ) $(BIN_DIR) $(OBJ_DIR)
	fpc -o$(EXEC) $(MAIN)
	mv $(BIN_DIR)/*.ppu $(OBJ_DIR)/
	mv $(BIN_DIR)/*.o $(OBJ_DIR)/

clean:
	rm -rf $(OBJ_DIR)/* $(BIN_DIR)/*

