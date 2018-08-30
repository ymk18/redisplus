FROM redis:5.0-rc4-alpine

RUN apk add tzdata

RUN echo never > /sys/kernel/mm/transparent_hugepage/enabled
RUN echo 511 > /proc/sys/net/core/somaxconn
