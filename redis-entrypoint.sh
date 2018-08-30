#!/bin/sh

echo 511 > /proc/sys/net/core/somaxconn
echo never > /sys/kernel/mm/transparent_hugepage/enabled

redis-server /data/redis.conf
