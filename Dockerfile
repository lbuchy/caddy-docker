FROM caddy:2.9.1-builder AS builder
RUN xcaddy build --with github.com/caddy-dns/porkbun
FROM caddy:2.9.1
COPY --from=builder /user/bin/caddy /usr/bin/caddy