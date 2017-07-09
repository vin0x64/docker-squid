#!/bin/bash

docker run --name=squid --restart=always --net=host  -d \
	-v /volume1/docker/squid/var/log/squid:/var/log/squid \
	-v /volume1/docker/squid/var/spool/squid:/var/spool/squid \
	-v /volume1/docker/squid/etc/squid/ssl:/etc/squid/ssl \
	-v /volume1/docker/squid/etc/squid/squid.conf:/etc/squid/squid.conf \
	-e TZ=Europe/Paris \
	vin0x64/squid

