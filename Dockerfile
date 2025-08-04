FROM alpine:latest

ARG VERSION

# https://github.com/dnscrypt/dnscrypt-proxy/wiki/Installation-on-Alpine-Linux#installation
RUN apk add --no-cache dnscrypt-proxy=$VERSION

CMD /usr/bin/dnscrypt-proxy -config /etc/dnscrypt-proxy.toml
