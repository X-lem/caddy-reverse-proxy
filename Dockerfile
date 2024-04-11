FROM caddy:latest

COPY Caddyfile /etc/caddy/Caddyfile

RUN caddy fmt --overwrite /etc/caddy/Caddyfile

CMD exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile 2>&1
