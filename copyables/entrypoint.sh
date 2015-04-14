#!/bin/bash
set -e

: ${SERVER_FQDN:?"-e SERVER_FQDN is not set"}

/usr/bin/openssl dhparam -out /etc/nginx/dh1024.pem 1024

/usr/sbin/service nginx start

exec "$@"
