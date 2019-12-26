FROM alpine:3.10

RUN set -x \
  && apk add --no-cache \
  sqlite \
  ca-certificates \
  && update-ca-certificates

ENTRYPOINT ["sqlite3"]
