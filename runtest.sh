#!/bin/bash

docker run --name=squidtest --restart=always  \
	-v /home/vincent/Docker/squid/volumes/var/log/squid:/var/log/squid \
	-v /home/vincent/Docker/squid/volumes/var/spool/squid:/var/spool/squid \
	-v /etc/squid/ssl:/etc/squid/ssl \
	-v /home/vincent/Docker/squid/squid.conf:/etc/squid/squid.conf \
	-e TZ=Europe/Paris \
	-p 8081:8080 \
	vin0x64/squid

