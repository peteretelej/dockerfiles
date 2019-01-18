#!/bin/bash

docker run -d -p 9011:80 --name demo-caddy \
	-v $(pwd)/Caddyfile:/Caddyfile:ro \
	-v $(pwd)/data:/caddy/data \
	-v $(pwd)/html:/html \
	-e HOME=/caddy/data \
	-w /html \
	etelej/caddy 

docker logs -f demo-caddy
