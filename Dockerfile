FROM lsiobase/alpine:3.13

RUN apk update; \
    apk upgrade; \
    apk add --no-cache dnscrypt-proxy; \
    \
    # clean up
    rm -rf /var/cache/apk/* /tmp/*

ENV LOCAL_PORT     5353
EXPOSE $LOCAL_PORT/tcp $LOCAL_PORT/udp

# add entrypoint file
COPY entrypoint.sh /
RUN  chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# set build date
RUN date >/build-date.txt
