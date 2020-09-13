# Docker-dnscrypt-proxy
Alpine Linux Docker running dnscrypt-proxy.

## References
https://www.dnscrypt.org/

## Build
    docker build --no-cache -t danchal/dnscrypt-proxy:tag .

## Push
    docker push danchal/dnscrypt-proxy:tag

## Run
    $ docker run -d \
        --name dnscrypt-proxy \
        -v /config:/usr/share/dnscrypt-proxy:ro \
        -p 5353:5353 \
        dnscrypt-proxy
