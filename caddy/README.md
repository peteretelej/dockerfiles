# Caddy Docker image

# Basic Usage
Mount Caddyfile to /Caddyfile, and data (caddy `$HOME` directory) to /caddy/data. The data directory (caddy HOME) retains certificates to avoid hitting acme server rate limits.


## Example
Assuming site root files are at ./site.
```
docker run --rm -p 80:2015 \
	-v "$PWD"/Caddyfile:/Caddyfile \
	-v "$PWD"/data:/caddy/data \
	-v "$PWD"/site:/site \
	-e HOME=/caddy/data \
	-w /site
	etelej/caddy caddy
```
