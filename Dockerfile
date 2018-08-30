FROM redis:5.0-rc4-alpine

RUN apk add tzdata
ADD enabled /sys/kernel/mm/transparent_hugepage/enabled
ADD somaxconn /proc/sys/net/core/somaxconn
