Docker Squid image

Simple Docker image to run squid proxy based on alpine linux base image & package

How to run ?
docker run --name=squid --restart=always --net=host  -d \
        -v /volume1/docker/squid/var/log/squid:/var/log/squid \
        -v /volume1/docker/squid/var/spool/squid:/var/spool/squid \
        -v /volume1/docker/squid/etc/squid/ssl:/etc/squid/ssl \
        -v /volume1/docker/squid/etc/squid/squid.conf:/etc/squid/squid.conf \
        -e TZ=Europe/Paris \
        vin0x64/squid

