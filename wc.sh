#!/bin/bash
# 参数 	描述
# -c 	统计字节数
# -l 	统计行数
# -m 	统计字符数，这个标志不能与 -c 标志一起使用
# -w 	统计字数，一个字被定义为由空白、跳格或换行字符分隔的字符串
# -L 	打印最长行的长度
cat time.sh
echo "----------------------------"
wc -c time.sh
wc -l time.sh
wc -m time.sh

ls /bin | wc -l

cat time.sh | wc -c

