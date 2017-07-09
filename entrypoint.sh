#!/bin/sh
set -e

SQUID_CACHE_DIR=/var/spool/squid/

$(which squid) -N -f /etc/squid/squid.conf -z
$(which squid) -f /etc/squid/squid.conf -YCd 1 ${EXTRA_ARGS} && exec tail -f /var/log/squid/cache.log
