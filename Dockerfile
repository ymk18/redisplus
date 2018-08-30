FROM redis:5.0-rc4-alpine

RUN apk add tzdata

COPY redis.conf /data/redis.conf
COPY redis.sh /data/redis.sh

CMD ["/bin/sh", "/data/redis.sh"]
