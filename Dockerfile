FROM redis:5.0-rc4-alpine

RUN apk add tzdata

COPY redis.conf /data/redis.conf \
  redis.sh /data/redis.sh

CMD ["/bin/sh", "/data/redis-entrypoint.sh"]
