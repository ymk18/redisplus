FROM redis:5.0-rc4-alpine

RUN apk add tzdata

ADD /sys/kernel/mm/transparent_hugepage/enabled < 'never'
# RUN echo "511" > /proc/sys/net/core/somaxconn
