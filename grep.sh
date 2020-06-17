# -c 	计算找到‘搜寻字符串’（即 pattern）的次数
# -i 	忽略大小写的不同，所以大小写视为相同
# -n 	输出行号
# -v 	反向选择，打印不匹配的行
# -r 	递归搜索
# --color=auto 	将找到的关键词部分加上颜色显示[]

grep "root" /etc/passwd --color=auto

echo "-----------------------------"

cat /etc/passwd | grep "root" --color=auto

echo "-----------------------------"

grep -v "root" /etc/passwd | grep  "lin"

echo "------------------------------"

grep -r "shell" .

