# Docker-dnscrypt-proxy
Alpine Linux Docker running dnscrypt-proxy.

## References
https://www.dnscrypt.org/

## Build
    docker build --pull --no-cache -t danchal/dnscrypt-proxy:latest .
    docker build --pull --no-cache -t danchal/dnscrypt-proxy:armhf .

## Push
    docker push danchal/dnscrypt-proxy:latest
    docker push danchal/dnscrypt-proxy:armhf

## Run
    $ docker run -d \
        --name dnscrypt-proxy \
        -v /usr/share/dnscrypt-proxy:/config:ro \
        -p 5353:5353/udp \
        danchal/dnscrypt-proxy
