#!/bin/bash
set -e

: ${SERVER_FQDN:?"-e SERVER_FQDN is not set"}

/usr/bin/openssl dhparam -out /etc/nginx/dh2048.pem 2048

/usr/sbin/service nginx start

exec "$@"
