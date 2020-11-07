# Docker-dnscrypt-proxy
Alpine Linux Docker running dnscrypt-proxy.

## References
https://www.dnscrypt.org/

## Build
    docker build --pull --no-cache -t danchal/dnscrypt-proxy .
    docker build --pull --no-cache -t danchal/dnscrypt-proxy:armhf .

## Push
    docker push danchal/dnscrypt-proxy
    docker push danchal/dnscrypt-proxy:armhf

## Run
    $ docker run -d \
        --name dnscrypt-proxy \
        -v /config:/usr/share/dnscrypt-proxy:ro \
        -p 5353:5353 \
        dnscrypt-proxy
