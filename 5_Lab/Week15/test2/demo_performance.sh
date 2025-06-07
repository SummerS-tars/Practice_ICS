#!/bin/bash

echo "=== 🚀 CSAPP 虚拟内存与 I/O 系统性能比较演示 ==="
echo ""

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

# 系统信息
show_system_info() {
    echo "=== 💻 系统信息 ==="
    echo "CPU信息: $(grep 'model name' /proc/cpuinfo | head -1 | cut -d':' -f2 | xargs)"
    echo "内存信息: $(free -h | grep '^Mem:' | awk '{print $2}')"
    echo "文件系统: $(df -T . | tail -1 | awk '{print $2}')"
    echo "内核版本: $(uname -r)"
    echo ""
}

# 创建测试文件
create_demo_files() {
    echo "📁 创建演示测试文件..."
    
    # 小文件 (约1KB)
    echo "这是一个小型测试文件，用于演示 CSAPP 课程中的内存映射 I/O 概念。" > demo_1kb.txt
    for i in {1..20}; do
        echo "第 $i 行：mmap 系统调用允许进程将文件直接映射到虚拟地址空间 Line $i" >> demo_1kb.txt
    done
    echo "✓ 创建演示小文件 ($(stat -c%s demo_1kb.txt) bytes)"
    
    # 中等文件 (约50KB)
    cat demo_1kb.txt > demo_50kb.txt
    for i in {1..40}; do
        cat demo_1kb.txt >> demo_50kb.txt
    done
    echo "✓ 创建演示中等文件 ($(stat -c%s demo_50kb.txt) bytes)"
    
    echo ""
}

# 运行演示测试
run_demo_test() {
    local file_size=$1
    local test_file=$2
    local iterations=$3
    
    echo "🧪 测试文件: $test_file ($file_size)"
    echo "   迭代次数: $iterations"
    echo "   ----------------------------------------"
    
    # 备份并替换测试文件
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
    
    # 性能分析
    echo ""
    echo "   📊 性能比较分析:"
    printf "      mmap 平均:    %.6f 秒\n" $mmap_avg
    printf "      syscall 平均: %.6f 秒\n" $syscall_avg
    
    ratio=$(echo "scale=2; $syscall_avg / $mmap_avg" | bc -l)
    percentage=$(echo "scale=1; ($syscall_avg - $mmap_avg) / $mmap_avg * 100" | bc -l)
    printf "      性能比值:     %.2f (syscall/mmap)\n" $ratio
    
    if (( $(echo "$percentage > 0" | bc -l) )); then
        printf "      性能差异:     syscall 比 mmap 慢 %.1f%%\n" $percentage
        echo "      📝 原因分析:  syscall 需要用户空间与内核空间的数据拷贝"
    else
        abs_percentage=$(echo "scale=1; -1 * $percentage" | bc -l)
        printf "      性能差异:     syscall 比 mmap 快 %.1f%%\n" $abs_percentage
        echo "      📝 原因分析:  对于小文件，mmap 的映射开销可能大于直接读取"
    fi
    
    # 恢复原文件
    cp text.txt.backup text.txt 2>/dev/null || echo "Hello World! It's a text file." > text.txt
    echo ""
}

# 清理函数
cleanup() {
    echo "🧹 清理演示文件..."
    rm -f demo_*.txt text.txt.backup
    echo "✓ 清理完成"
}

# 主函数
main() {
    check_dependencies
    show_system_info
    create_demo_files
    
    echo "=== 🔬 开始演示性能测试 ==="
    echo ""
    
    # 演示测试
    run_demo_test "1KB" "demo_1kb.txt" 3
    run_demo_test "50KB" "demo_50kb.txt" 3
    
    echo "=== ✅ 演示完成 ==="
    echo ""
    echo "🎯 CSAPP 教学要点总结:"
    echo "• 📖 第9章: 虚拟内存系统"
    echo "  - mmap() 将文件直接映射到进程的虚拟地址空间"
    echo "  - 避免了用户空间与内核空间之间的数据拷贝"
    echo "  - 利用虚拟内存的懒加载机制，按需加载页面"
    echo ""
    echo "• 📖 第10章: 系统级I/O"
    echo "  - 标准I/O库函数（如fread）提供缓冲机制"
    echo "  - 系统调用与库函数的性能权衡"
    echo "  - 零拷贝技术的实际应用"
    echo ""
    echo "• 🔍 性能影响因素:"
    echo "  - 文件大小：小文件时映射开销可能超过收益"
    echo "  - 访问模式：顺序访问 vs 随机访问"
    echo "  - 系统负载：页缓存命中率的影响"
    echo "  - 硬件特性：内存带宽、磁盘性能"
    
    cleanup
}

# 运行演示
main
