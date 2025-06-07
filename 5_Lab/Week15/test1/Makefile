# Makefile for Virtual Memory Exercise Programs
# ICS Course - Week 15 - Exercise 11

CC = gcc
CFLAGS = -Wall -Wextra -g -std=c99
TARGETS = MappingOfSubprocess COW_Demo ForkMemoryAnalysis

# Default target
all: $(TARGETS)

# Individual targets
MappingOfSubprocess: MappingOfSubprocess.c
	$(CC) $(CFLAGS) -o $@ $^

COW_Demo: COW_Demo.c
	$(CC) $(CFLAGS) -o $@ $^

ForkMemoryAnalysis: ForkMemoryAnalysis.c
	$(CC) $(CFLAGS) -o $@ $^

# Clean target
clean:
	rm -f $(TARGETS)

# Run targets for testing
run-mapping: MappingOfSubprocess
	@echo "=== Running Memory Mapping Test ==="
	@echo "Use 'ps aux | grep MappingOfSubprocess' in another terminal to see processes"
	@echo "Use 'cat /proc/PID/maps' to examine memory mappings"
	@echo "Press Ctrl+C to exit"
	./MappingOfSubprocess

run-cow: COW_Demo
	@echo "=== Running Copy-on-Write Demonstration ==="
	./COW_Demo

run-analysis: ForkMemoryAnalysis
	@echo "=== Running Comprehensive Fork Memory Analysis ==="
	@echo "This program will show detailed memory mappings and demonstrate COW"
	./ForkMemoryAnalysis

# Help target
help:
	@echo "Available targets:"
	@echo "  all           - Build all programs"
	@echo "  clean         - Remove compiled programs"
	@echo "  run-mapping   - Run the basic mapping test program"
	@echo "  run-cow       - Run the copy-on-write demonstration"
	@echo "  run-analysis  - Run the comprehensive analysis program"
	@echo ""
	@echo "Programs:"
	@echo "  MappingOfSubprocess - Basic parent/child process memory mapping test"
	@echo "  COW_Demo           - Simple copy-on-write demonstration"
	@echo "  ForkMemoryAnalysis - Comprehensive fork() and memory analysis"

.PHONY: all clean run-mapping run-cow run-analysis help
