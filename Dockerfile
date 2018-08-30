FROM redis:5.0-rc4-alpine

RUN apk add tzdata
COPY enabled /sys/kernel/mm/transparent_hugepage/enabled
COPY somaxconn /proc/sys/net/core/somaxconn
