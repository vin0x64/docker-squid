FROM alpine:latest
MAINTAINER vincent@vin0x64.fr

RUN apk add --update squid && \
	rm -rf /var/cache/apk/*

COPY squid.conf /etc/squid/squid.conf
COPY entrypoint.sh /sbin/entrypoint.sh

EXPOSE 8080/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]
