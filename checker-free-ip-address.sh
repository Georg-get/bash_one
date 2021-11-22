#!/bin/bash
  NET=${NET:-$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d '/' | cut -f 1-3 -d .)}
for ip in {1..254..1}
do
status=`ping -w1 -c1 ${NET}.${ip}`
         if [[ $? == 1 ]];then
                 echo "${NET}.${ip} свободен"
         fi;
done
