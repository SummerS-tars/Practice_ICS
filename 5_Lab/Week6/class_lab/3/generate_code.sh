#!/bin/bash

# Define source files
FILES=("work3_1.c" "work3_2.c")

# Output directories
ASM_DIR="assembly"
BIN_DIR="binary"
DISASM_DIR="disassembly"

# Create output directories if not exist
mkdir -p $ASM_DIR $BIN_DIR $DISASM_DIR

# Compile each file
for FILE in "${FILES[@]}"; do
    BASENAME=$(basename "$FILE" .c)

    # Generate assembly code
    gcc -S -o "$ASM_DIR/$BASENAME.s" "$FILE"

    # Generate binary executable
    gcc -o "$BIN_DIR/$BASENAME" "$FILE"

    # Generate disassembly from binary
    objdump -d "$BIN_DIR/$BASENAME" > "$DISASM_DIR/$BASENAME.disasm"
done

echo "Assembly, binary, and disassembly files have been generated."
