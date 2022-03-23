#!/bin/bash

outp=~/research/sys_info.txt

mkdir ~/research 2>/dev/null
echo "System Audit Script" > $outp

date>>$outp 

echo "" >>$outp 

echo "Machine Type Info" >>$outp 

echo $MACHTYPE >>$outp 

echo -e "Uname info: $(uname -a) \n" >>$outp 

echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >>$outp 

echo "Hostname: $(hostname -s)" >>$outp 

echo "DNS Servers:" >>$outp 

cat /etc/resolv.conf >>$outp 

echo "Memory Info:" >>$outp 

free >>$outp 

echo -e "\nCPU Info:" >>$outp 

lscpu | grep CPU >>$outp 

echo -e "\nDisk Usage:" >>$outp 

df -H | head -2 >>$outp 

echo -e "\nWho is logged in: \n $(who) \n" >>$outp 
  
echo -e "\n777 Files:" >>$outp 

find / -type f -perm 777 >> $outp 

echo -e "\nTop 10 Processes" >> $outp 

ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $outp 

