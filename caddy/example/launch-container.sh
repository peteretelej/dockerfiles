#!/bin/bash

docker run -d --name demo-caddy \
	--net host \
	-v $(pwd)/Caddyfile:/Caddyfile:ro \
	-v $(pwd)/data:/caddy/data \
	-v $(pwd)/html:/html \
	-e HOME=/caddy/data \
	-w /html \
	etelej/caddy 

docker logs -f demo-caddy