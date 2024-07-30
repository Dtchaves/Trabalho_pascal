MAIN = src/main.pas
BUSCA = src/BuscaBinaria.pas
INC_DIR = include
OBJ_DIR = obj
BIN_DIR = bin
EXEC = $(BIN_DIR)/MainBuscaBinaria

all: $(BIN_DIR) $(OBJ_DIR) $(EXEC)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(EXEC): $(MAIN) $(BUSCA) $(BIN_DIR) $(OBJ_DIR)
	fpc -o$(EXEC) $(MAIN)
	mv $(BIN_DIR)/*.ppu $(OBJ_DIR)/
	mv $(BIN_DIR)/*.o $(OBJ_DIR)/

clean:
	rm -rf $(OBJ_DIR)/* $(EXEC)

