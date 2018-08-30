FROM redis:5.0-rc4-alpine

RUN apk add tzdata \
  echo 511 > /proc/sys/net/core/somaxconn \
  echo never > /sys/kernel/mm/transparent_hugepage/enabled
