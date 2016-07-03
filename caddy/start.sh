#!/bin/sh
production=${production:="false"}
if [[ "$production" == "true" ]]; then
/usr/bin/caddy --conf /Caddyfile -email $email
else
/usr/bin/caddy --conf /Caddyfile -ca https://acme-staging.api.letsencrypt.org/directory -email $email
fi
