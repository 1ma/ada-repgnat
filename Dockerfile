FROM alpine:3.8

RUN apk add -U curl \
 && cd /tmp \
 && curl -LOJ https://www.dropbox.com/s/ruxwdu5003oby26/muslx86_64-linux-musl-nativeada.tar.gz?dl=1 \
 && tar zxvf muslx86_64-linux-musl-nativeada.tar.gz

FROM alpine:3.8

COPY --from=0 /tmp/x86_64-linux-musl-native /usr/

WORKDIR /root
