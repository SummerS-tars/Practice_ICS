# Makefile for IPC demonstration program
# 用于演示进程间通信的Makefile

# 编译器和编译选项
CC = gcc
CFLAGS = -Wall -Wextra -g -std=c99
TARGET = IPC
SOURCE = IPC.c

# 默认目标
all: $(TARGET)

# 编译规则
$(TARGET): $(SOURCE)
	@echo "编译IPC演示程序..."
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE)
	@echo "编译完成！"

# 运行程序
run: $(TARGET)
	@echo "运行IPC演示程序："
	@echo "================================"
	./$(TARGET)

# 调试版本
debug: CFLAGS += -DDEBUG -O0
debug: $(TARGET)
	@echo "调试版本编译完成！"

# 清理生成的文件
clean:
	@echo "清理生成的文件..."
	rm -f $(TARGET)
	@echo "清理完成！"

# 查看程序信息
info:
	@echo "程序信息："
	@echo "  源文件: $(SOURCE)"
	@echo "  目标文件: $(TARGET)"
	@echo "  编译器: $(CC)"
	@echo "  编译选项: $(CFLAGS)"

# 帮助信息
help:
	@echo "可用的make目标："
	@echo "  all     - 编译程序（默认）"
	@echo "  run     - 编译并运行程序"
	@echo "  debug   - 编译调试版本"
	@echo "  clean   - 清理生成的文件"
	@echo "  info    - 显示程序信息"
	@echo "  help    - 显示此帮助信息"

# 声明伪目标
.PHONY: all run debug clean info help
