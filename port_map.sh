#!/bin/#!/usr/bin/env bash
# DMITRIY LAZAREV 2019
# http://hostadmina.ru/blog/linux/ssh/probros-portov-cherez-ssh-tunnel.html


ssh -L 1540:127.0.0.1:1540 -f -N 'root@82.151.111.84' -p '2244' sleep 10
ssh -L 1541:127.0.0.1:1541 -f -N 'root@82.151.111.84' -p '2244' sleep 10

ssh -L 1560:127.0.0.1:1560 -f -N 'root@82.151.111.84' -p '2244' sleep 10
ssh -L 1561:127.0.0.1:1561 -f -N 'root@82.151.111.84' -p '2244' sleep 10
ssh -L 1562:127.0.0.1:1562 -f -N 'root@82.151.111.84' -p '2244' sleep 10

sudo netstat -lnpt | grep ssh


# ssh -R 8081:<web-host>:80 user@<ssh-host>
ssh -R 475:192.168.0.76:475 root@82.151.111.84 -p 2244 sleep 10
