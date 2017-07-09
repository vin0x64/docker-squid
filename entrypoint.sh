#!/bin/sh

SQUID_CACHE_DIR=/var/spool/squid/

if [ "$#" -ne "0" ]; then
    echo "starting $@"
    exec $@
else
    $(which squid) -N -f /etc/squid/squid.conf -z
    $(which squid) -f /etc/squid/squid.conf -YCd 1 ${EXTRA_ARGS} && exec tail -f /var/log/squid/cache.log
fi