#!/bin/bash
ping 192.168.10.101 -c1 | grep icmp_seq | awk '{print $1}'
