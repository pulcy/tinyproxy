FROM alpine:latest

RUN apk add --update tinyproxy

ADD ./tinyproxy.conf /etc/tinyproxy/
ADD ./start.sh /app/

ENTRYPOINT ["/app/start.sh"]
