# Caddy Docker image

# Basic Usage
Mount Caddyfile to /Caddyfile, and data (caddy `$HOME` directory) to /caddy/data. The data directory (caddy HOME) retains certificates to avoid hitting acme server rate limits.


## Example
Assuming site root files are at ./site.
```
docker run --rm --net host \
	-v "$PWD"/Caddyfile:/Caddyfile \
	-v "$PWD"/data:/caddy/data \
	-v "$PWD"/site:/site \
	-e HOME=/caddy/data \
	-w /site \
	etelej/caddy
```

*PS*: Only use `--restart always` after ensuring it launches at least once, otherwise you'll hit Let's Encrypt API limits

