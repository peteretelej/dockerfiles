FROM debian:stretch
MAINTAINER Peter Etelej <peter@etelej.com>

RUN apt-get update && apt-get upgrade --no-install-recommends -y \
	    && apt-get install -y wget \
	    && wget 'https://caddyserver.com/download/linux/amd64?plugins=tls.dns.cloudflare&license=personal&telemetry=off' -O caddy.tar.gz \
	    && mkdir caddy && tar -C caddy -xzf caddy.tar.gz \
	    && mv caddy/caddy /usr/local/bin/caddy \
	    && rm -rf caddy* && mkdir caddy\
	    && apt-get purge -y wget \
	    && rm -rf /var/lib/apt/lists/*

CMD ["caddy","-conf","/Caddyfile","-agree","--log","stdout"]


