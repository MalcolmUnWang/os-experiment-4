# os-experiment-4
本次实验选择攻击漏洞CVE-2016-5195,实验将通过该漏洞对与root下的文件/etc/bash.bashrc和/usr/bin/passwd文件修改，来攻击目标操作系统。

## 实现思路
1. 用一个程序利用漏洞改写/etc/bashrc中的内容，在运行bachrc的时候在root下能创建文件。
2. 用另外一个程序改写/usr/bin/passwd中的uid，并完成创建修改。
3. 在攻击完成后，程序将会把原来的bashrc和passed还原。

可用编译指令将源代码分别编译成上面两个程序，具体过程见run.sh。

## 环境
Linux Unbuntu x86_64 with kernel 4.4.25
