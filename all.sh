#!/bin/bash

time ./df.sh

time date#!/bin/bash

# -print 	find 命令将匹配的文件输出到标准输出
# -exec 	find 命令对匹配的文件执行该参数所给出的 shell 命令
# -name 	按照文件名查找文件
# -type 	查找某一类型的文件
# -prune 	使用这一选项可以使 find 命令不在当前指定的目录中查找，如果同时使用 -depth 选项，那么 -prune 将被 find 命令忽略
# -user 	按照文件属主来查找文件
# -group 	按照文件所属的组来查找文件
# -mtime -n +n 	按照文件的更改时间来查找文件，-n 表示文件更改时间距现在小于 n 天，+n 表示文件更改时间距现在大于 n 天，find 命令还有 -atime 和 -ctime 选项


find . -print
echo '-----------------------------------'

find . -name "*.txt" -print
echo '-----------------------------------'

find .  \( -name "*.md" -or -name "*.txt" \)
echo '-----------------------------------'

find . ! -name "*.txt"
echo '-----------------------------------'

# b 快设备
# c 字符文件
# d 目录文件
# f 普通文件
# l 符号连接

find . -type l -name "*.txt" -print

echo '-------------------------------------'
find . -type f -name "*.sh" -perm 777

echo '--------------------------------------'
find . -type f -user lin
echo '-------------------------------------'

find . -type f \( ! -perm 777 -and ! -perm 644   \)

echo '--------------------------------------'

# {}其实它就是一个占位符，在 find 命令的执行过程中会不断地替换成当前找到的文件
find . -name "*.sh" -exec ls -l {} \;
echo '--------------------------------------'

find . -name "*.sh" -exec cat {} \; > all.sh

echo '---------------------------------------'

find . -name "*.sh" -exec ./cmd.sh {} \;

echo '--------------------------------------'


#!/bin/bash
ls -l $1
cat $1# -c 	计算找到‘搜寻字符串’（即 pattern）的次数
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

#!/bin/bash

cat ./student.txt
echo
cut -f 1,3 -d '-' ./student.txt
echo '----------------------------'
time cut -f 1 -d '-' ./student.txt

echo '----------------------------'

time cut -f 1-3 -d  '-' student.txt 

echo '----------------------------'

cut -f 1 -d '-' student.txt --complement
echo '----------------------------'#!/bin/bash

comm -12 f1.txt f2.txt

echo "-------------------------------------"

comm -3 f1.txt f2.txt#!/bin/bash
echo "uniq---------------------------"
time ls  /bin /usr/bin | sort -nr | uniq -d | head -10

echo " -c -f -w----------------------"

time sort -k 4.1n,4.1n student.txt 
#| uniq -c -f 3 -w 2#!/bin/bash

echo "df -->disk free--------------------------------"
echo "df -ah ----------------------------------------"
df -a

echo "df -h------------------------------------------"
df -h
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

#!/bin/bash
echo "f1----------------------------"
cat f1.txt

echo "f2----------------------------"
cat f2.txt
echo "diff------------------------------"
diff f1.txt f2.txt

echo "------------------------------"
diff -c f1.txt f2.txt

echo "------------------------------"
diff -u f1.txt f2.txt

echo "patchdiff---------------------"
diff -Naur f1.txt f2.txt > patchdiff.txt

echo "patch-------------------------"
patch < patchdiff.txt
cp f1.txt f3.txt
patch -R < patchdiff.txt



#!/bin/bash
ehco "sort-----------------------------------"
time du -sh /usr/share/* | sort -nr | head -10

echo "ls-------------------------------------"
time ls -lh /usr/share/* | sort -nr -k 5 | head -10 

echo "sort f1.txt----------------------------"
time sort f1.txt
