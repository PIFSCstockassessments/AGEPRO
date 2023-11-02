# Compiler Options
# Enable -Wall -Wextra for GCC compiler warning messages
C_FLAGS := # -Wall -Wextra 
CC := gcc

# Directories the makefile should search 
VPATH := ./obj/ ./src/ ./bin/

#TARGET binary executable 
TARGET := AGEPRO.exe

# Directory Variables
SRC_DIR := ./src
BIN_DIR := ./bin
OBJ_DIR := ./obj
EXE_PATH := $(BIN_DIR)/$(TARGET)

# Source Files 
# Header files included in src directory
C_FILES := ranx.c boxmuller.c util.c 
SRC_FILES := $(C_FILES:%.c=$(SRC_DIR)/%.c)
MAIN_FILE := $(SRC_DIR)/AgePro.c

# Object Files 
OBJ_FILES := $(C_FILES:%.c=$(OBJ_DIR)/%.o)

# Build 
all: $(OBJ_DIR) agepro
.PHONY: all

#Compile Object Files for non-main source code files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(C_FLAGS) -c -o $@ $<
 
#Compile main file, and link object files to target executable.
agepro: $(OBJ_FILES)
	@echo "[Info] Building Binary Executable [$(TARGET)]"
	$(CC) $(C_FLAGS) -o $(EXE_PATH) $^ $(MAIN_FILE) 

# Cleanup  
.PHONY: clean
clean:
	echo "[Clean] Clean Object Files"
	-rm -f $(OBJ_FILES)

