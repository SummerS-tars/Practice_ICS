#!/bin/bash

echo "=== 精细性能测试脚本 ==="
echo "正在测试 mmap 与 syscall 文件读取方法的性能对比"
echo ""

# 创建不同大小的测试文件
create_test_files() {
    echo "📁 创建测试文件..."
    
    # 小文件 (1KB) - 使用文本内容更真实
    echo "这是一个小型测试文件，用于测试文件读取性能。" > test_1kb.txt
    for i in {1..50}; do
        echo "第 $i 行：这是用于性能测试的文本内容，包含中文字符和英文字符 Line $i" >> test_1kb.txt
    done
    echo "✓ 创建 1KB 测试文件 ($(stat -c%s test_1kb.txt) bytes)"
    
    # 中等文件 (100KB) - 复制小文件内容
    cat test_1kb.txt > test_100kb.txt
    for i in {1..100}; do
        cat test_1kb.txt >> test_100kb.txt
    done
    echo "✓ 创建 100KB 测试文件 ($(stat -c%s test_100kb.txt) bytes)"
    
    # 大文件 (5MB) - 继续扩展
    cat test_100kb.txt > test_5mb.txt
    for i in {1..50}; do
        cat test_100kb.txt >> test_5mb.txt
    done
    echo "✓ 创建 5MB 测试文件 ($(stat -c%s test_5mb.txt) bytes)"
    echo ""
}

# 运行性能测试
run_benchmark() {
    local file_size=$1
    local test_file=$2
    local iterations=$3
    
    echo "🧪 测试文件: $test_file ($file_size)"
    echo "   迭代次数: $iterations"
    echo "   ----------------------------------------"
    
    # 备份原始文件
    cp text.txt text.txt.backup 2>/dev/null || true
    cp $test_file text.txt
    
    # 测试 mmap 方法
    echo "   🔍 测试 mmap 方法..."
    mmap_total=0
    for i in $(seq 1 $iterations); do
        start_time=$(date +%s.%N)
        ./MMapRead > /dev/null 2>&1
        end_time=$(date +%s.%N)
        duration=$(echo "$end_time - $start_time" | bc -l)
        mmap_total=$(echo "$mmap_total + $duration" | bc -l)
        printf "     第 %d 次: %.6f 秒\n" $i $duration
    done
    mmap_avg=$(echo "scale=6; $mmap_total / $iterations" | bc -l)
    
    echo ""
    echo "   🔍 测试 syscall 方法..."
    syscall_total=0
    for i in $(seq 1 $iterations); do
        start_time=$(date +%s.%N)
        ./SyscallRead > /dev/null 2>&1
        end_time=$(date +%s.%N)
        duration=$(echo "$end_time - $start_time" | bc -l)
        syscall_total=$(echo "$syscall_total + $duration" | bc -l)
        printf "     第 %d 次: %.6f 秒\n" $i $duration
    done
    syscall_avg=$(echo "scale=6; $syscall_total / $iterations" | bc -l)
    
    # 性能比较
    echo ""
    echo "   📊 性能比较分析:"
    printf "      mmap 平均:    %.6f 秒\n" $mmap_avg
    printf "      syscall 平均: %.6f 秒\n" $syscall_avg
    
    ratio=$(echo "scale=2; $syscall_avg / $mmap_avg" | bc -l)
    percentage=$(echo "scale=1; ($syscall_avg - $mmap_avg) / $mmap_avg * 100" | bc -l)
    printf "      性能比值:     %.2f (syscall/mmap)\n" $ratio
    
    if (( $(echo "$percentage > 0" | bc -l) )); then
        printf "      性能差异:     syscall 比 mmap 慢 %.1f%%\n" $percentage
    else
        abs_percentage=$(echo "scale=1; -1 * $percentage" | bc -l)
        printf "      性能差异:     syscall 比 mmap 快 %.1f%%\n" $abs_percentage
    fi
    
    # 恢复原始文件
    cp text.txt.backup text.txt 2>/dev/null || echo "Hello World! It's a text file." > text.txt
    echo ""
}

# 系统信息
show_system_info() {
    echo "=== 💻 系统信息 ==="
    echo "CPU信息: $(grep 'model name' /proc/cpuinfo | head -1 | cut -d':' -f2 | xargs)"
    echo "内存信息: $(free -h | grep '^Mem:' | awk '{print $2}')"
    echo "文件系统: $(df -T . | tail -1 | awk '{print $2}')"
    echo "内核版本: $(uname -r)"
    echo ""
}

# 清理测试文件
cleanup() {
    echo "🧹 清理测试文件..."
    rm -f test_1kb.txt test_100kb.txt test_5mb.txt text.txt.backup
    echo "✓ 清理完成"
}

# 检查依赖
check_dependencies() {
    if ! command -v bc &> /dev/null; then
        echo "❌ 错误: 需要安装 bc 计算器"
        echo "请运行: sudo apt-get install bc"
        exit 1
    fi
    
    if [ ! -f MMapRead ] || [ ! -f SyscallRead ]; then
        echo "❌ 错误: 需要先编译程序"
        echo "请运行: make all"
        exit 1
    fi
    
    echo "✓ 依赖检查通过"
    echo ""
}

# 主函数
main() {
    echo "=== 🚀 CSAPP 虚拟内存与 I/O 系统性能比较 ==="
    echo ""
    
    check_dependencies
    show_system_info
    create_test_files
    
    echo "=== 🔬 开始性能测试 ==="
    echo ""
    
    # 不同文件大小的测试
    run_benchmark "1KB" "test_1kb.txt" 5
    run_benchmark "100KB" "test_100kb.txt" 5
    run_benchmark "5MB" "test_5mb.txt" 3
    
    echo "=== ✅ 性能测试完成 ==="
    echo ""
    echo "🎯 测试结论 (基于 CSAPP 理论):"
    echo "• 小文件(1KB): 两种方法性能相近，系统调用开销占主导"
    echo "• 中等文件(100KB): 开始显现 mmap 的零拷贝优势"
    echo "• 大文件(5MB): mmap 显著减少用户空间与内核空间的数据拷贝"
    echo "• 虚拟内存机制使 mmap 能直接映射文件到进程地址空间"
    echo "• 实际性能受文件大小、页缓存、硬件配置影响"
    echo ""
    echo "📚 CSAPP 相关概念:"
    echo "• 第9章: 虚拟内存系统"
    echo "• 第10章: 系统级I/O"
    echo "• 内存映射文件 vs 标准I/O的权衡"
    
    cleanup
}

# 运行主函数
main