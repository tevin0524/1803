#!/bin/bash
rht-vmctl start desktop
rht-vmctl start classroom
for i in {1..50}
do
  ssh root@172.25.0.10 &>/dev/null
  if [ $? -eq 0 ];then
     exit
  fi
  echo "即将进行第$[i+1]次尝试"
done
echo "172.25.0.10没连上"
