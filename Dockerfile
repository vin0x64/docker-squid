FROM ubuntu:zesty
MAINTAINER vincent@vin0x64.fr

RUN apt-get -q update && apt-get --no-install-recommends install -y squid && \
	mkdir /etc/squid/ssl && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* 

COPY squid.conf /etc/squid/squid.conf
COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 8080/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]
