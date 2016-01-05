#!/bin/bash
set -e

: ${SERVER_FQDN:?"-e SERVER_FQDN is not set"}

/usr/bin/openssl dhparam -out /etc/nginx/dh4096.pem 4096

/usr/sbin/service nginx start

exec "$@"
