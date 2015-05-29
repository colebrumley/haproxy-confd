FROM alpine
RUN apk update && apk add haproxy
ADD https://github.com/kelseyhightower/confd/releases/download/v0.9.0/confd-0.9.0-linux-amd64 /usr/bin/confd
RUN chmod +x /usr/bin/confd
VOLUME /etc/confd
ENTRYPOINT /usr/bin/confd
