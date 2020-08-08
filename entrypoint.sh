#!/bin/sh
echo "Starting dnscrypt-proxy, build date $(cat /build-date.txt)"

# create empty config file if not exist
touch /config/dnscrypt-proxy.toml

/usr/bin/dnscrypt-proxy \
    -config /config/dnscrypt-proxy.toml