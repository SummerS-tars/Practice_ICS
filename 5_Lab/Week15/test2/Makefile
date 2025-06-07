# Makefile for File Reading Comparison Programs
# ICS Course - Week 15 - Exercise 11 - Part 2

CC = gcc
CFLAGS = -Wall -Wextra -g -std=c99
TARGETS = MMapRead SyscallRead

# Default target
all: $(TARGETS)

# Individual targets
MMapRead: MMapRead.c
	$(CC) $(CFLAGS) -o $@ $^

SyscallRead: SyscallRead.c
	$(CC) $(CFLAGS) -o $@ $^

# Clean target
clean:
	rm -f $(TARGETS)

# Clean performance test files
clean-perf:
	@echo "清理性能测试相关文件..."
	@rm -f test_*.txt text.txt.backup
	@echo "✓ 性能测试文件清理完成"

# Clean all (including performance files)
clean-all: clean clean-perf
	@echo "✓ 所有文件清理完成"

# Run targets for testing
run-mmap: MMapRead
	@echo "=== Running Memory-Mapped File Reading ==="
	@echo "Reading file contents using mmap() system call"
	@echo ""
	./MMapRead

run-syscall: SyscallRead
	@echo "=== Running Standard Library File Reading ==="
	@echo "Reading file contents using fread() library function"
	@echo ""
	./SyscallRead

run-both: $(TARGETS)
	@echo "=== 🔍 比较两种文件读取方法 ==="
	@echo ""
	@echo "1. Memory-mapped file reading (mmap):"
	@echo "----------------------------------------"
	./MMapRead
	@echo ""
	@echo "2. Standard library file reading (fread):"
	@echo "----------------------------------------"
	./SyscallRead
	@echo ""
	@echo "=== ✅ 比较完成 ==="

# Performance comparison using external script
run-performance: $(TARGETS)
	@echo "=== 🚀 精细性能比较分析 ==="
	@echo "运行多文件大小、多次迭代的详细性能测试..."
	@echo ""
	@if [ ! -f performance_test.sh ]; then \
		echo "❌ 错误: performance_test.sh 脚本不存在"; \
		echo "请确保性能测试脚本存在于当前目录"; \
		exit 1; \
	fi
	@if [ ! -x performance_test.sh ]; then \
		echo "设置脚本执行权限..."; \
		chmod +x performance_test.sh; \
	fi
	@./performance_test.sh

# Demo performance test with visible output
run-demo: $(TARGETS)
	@echo "=== 🎭 演示模式性能测试 ==="
	@echo "运行带有详细输出和教学说明的演示版本..."
	@echo ""
	@if [ ! -f demo_performance.sh ]; then \
		echo "❌ 错误: demo_performance.sh 脚本不存在"; \
		echo "请确保演示脚本存在于当前目录"; \
		exit 1; \
	fi
	@if [ ! -x demo_performance.sh ]; then \
		echo "设置脚本执行权限..."; \
		chmod +x demo_performance.sh; \
	fi
	@./demo_performance.sh

# Quick performance test using system time command
run-quick-perf: $(TARGETS)
	@echo "=== ⚡ 快速性能对比测试 ==="
	@echo "使用当前 text.txt 进行简单的性能对比..."
	@echo ""
	@echo "📊 测试 mmap 方法 (10次):"
	@for i in $$(seq 1 10); do \
		echo -n "   第$$i次: "; \
		/usr/bin/time -f "%e 秒" ./MMapRead > /dev/null; \
	done
	@echo ""
	@echo "📊 测试 syscall 方法 (10次):"
	@for i in $$(seq 1 10); do \
		echo -n "   第$$i次: "; \
		/usr/bin/time -f "%e 秒" ./SyscallRead > /dev/null; \
	done
	@echo ""
	@echo "💡 提示: 使用 'make run-performance' 进行更详细的分析"

# Check file status
check-file:
	@echo "=== 📁 文件信息检查 ==="
	@if [ -f text.txt ]; then \
		echo "文件: text.txt"; \
		echo "大小: $$(stat -c%s text.txt) bytes"; \
		echo "内容预览:"; \
		echo "----------------------------------------"; \
		head -3 text.txt; \
		echo "----------------------------------------"; \
	else \
		echo "❌ 错误: text.txt 不存在!"; \
		echo "正在创建示例文件..."; \
		echo "Hello World! It's a text file for CSAPP exercise." > text.txt; \
		echo "✓ 示例文件已创建"; \
	fi

# Test programs individually
test-mmap: MMapRead check-file
	@echo "=== 🧪 测试 mmap 程序 ==="
	./MMapRead

test-syscall: SyscallRead check-file
	@echo "=== 🧪 测试 syscall 程序 ==="
	./SyscallRead

# Help target
help:
	@echo "=== 📖 CSAPP 文件 I/O 性能比较项目 - 可用目标 ==="
	@echo ""
	@echo "🔨 构建目标:"
	@echo "  all              - 编译所有程序"
	@echo "  clean            - 删除编译的程序"
	@echo "  clean-perf       - 删除性能测试文件"
	@echo "  clean-all        - 删除所有生成的文件"
	@echo ""
	@echo "🧪 测试目标:"
	@echo "  test-mmap        - 单独测试 mmap 程序"
	@echo "  test-syscall     - 单独测试 syscall 程序"
	@echo "  run-both         - 运行两个程序进行对比"
	@echo ""
	@echo "⚡ 性能测试:"
	@echo "  run-quick-perf   - 快速性能对比测试（使用当前文件）"
	@echo "  run-demo         - 演示模式性能测试（带详细说明和教学要点）"
	@echo "  run-performance  - 精细性能比较分析（多文件大小、多次测试）"
	@echo ""
	@echo "🔧 实用工具:"
	@echo "  check-file       - 检查 text.txt 是否存在并显示内容"
	@echo "  help             - 显示此帮助信息"
	@echo ""
	@echo "📚 程序说明:"
	@echo "  MMapRead         - 使用 mmap() 系统调用进行文件读取"
	@echo "  SyscallRead      - 使用 fread() 库函数进行文件读取"
	@echo ""
	@echo "🎯 教学重点 (基于 CSAPP):"
	@echo "  • 内存映射 I/O vs 传统 I/O 的性能差异"
	@echo "  • 虚拟内存系统的实际应用"
	@echo "  • 系统调用接口与标准库的区别"
	@echo "  • 零拷贝技术的理解"

.PHONY: all clean clean-perf clean-all run-mmap run-syscall run-both run-performance run-demo run-quick-perf check-file test-mmap test-syscall help
