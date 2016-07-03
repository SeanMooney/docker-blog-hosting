#!/bin/sh
production=${production:="false"}
if [[ "$production" == "true" ]]; then
/root/caddy --conf /root/Caddyfile -email $EMAIL
else
/root/caddy --conf /root/Caddyfile -ca https://acme-staging.api.letsencrypt.org/directory -email $EMAIL
fi
