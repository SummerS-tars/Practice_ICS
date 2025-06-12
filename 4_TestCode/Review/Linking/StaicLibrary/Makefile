CC = gcc
CFLAGS = -g -Wall -Werror -std=c2x -m64

# Library name
LIB_NAME = libmath.a

# Source files
SOURCES = sum.c mul.c

# Object files (derived from source files)
OBJECTS = $(SOURCES:.c=.o)

# Default target - does both compilation and library creation
all: $(LIB_NAME)

# Task 1: Compile source files to relocatable object files only
compile: $(OBJECTS)
	@echo "Compilation complete. Object files created: $(OBJECTS)"

# Task 2: Create static library from object files
library: $(LIB_NAME)
	@echo "Static library created: $(LIB_NAME)"

# Rule to create static library
$(LIB_NAME): $(OBJECTS)
	ar rcs $(LIB_NAME) $(OBJECTS)

# Rule to compile .c files to .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target to remove generated files
clean:
	rm -f $(OBJECTS) $(LIB_NAME)

# Phony targets
.PHONY: all compile library clean

