MAIN = src/main.pas
BUSCA = src/BuscaBinaria.pas
INC_DIR = include
OBJ_DIR = obj
BIN_DIR = bin
EXEC = $(BIN_DIR)/MainBuscaBinaria

all: $(EXEC)

$(EXEC): $(MAIN) $(BUSCA)
	fpc -o$(EXEC) $(MAIN)
	mv $(BIN_DIR)/*.ppu $(OBJ_DIR)/
	mv $(BIN_DIR)/*.o $(OBJ_DIR)/

clean:
	rm -rf $(OBJ_DIR)/* $(EXEC)