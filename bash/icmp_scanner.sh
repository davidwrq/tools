#!/bin/bash

hosts=("192.168.1")
for host in ${hosts[@]}; do 
  for i in $(seq 1 254);do
     #  echo -e "\n[+] Enumerating host $host.$i"
     timeout 1 bash -c "ping -c 1 $host.$i" &> /dev/null && echo "[+] Host: $host.$i -ACTIVO" & 
  done; wait
done
