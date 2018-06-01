#!/bin/bash

for host in $(cat /etc/ansible/hosts |grep -v \\[); do
  echo "attaching to $host"
  screen -S $host ssh $host journalctl -u mine -f &
done

