FROM debian:jessie
LABEL maintainer "Peter Etelej <peter@etelej.com>"

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	wget ca-certificates \
	&& wget https://dl.minio.io/server/minio/release/linux-amd64/minio \
	&& chmod +x minio && mv minio /usr/local/bin/ \
	&& apt-get purge --auto-remove -y wget \
	&& rm -rf /var/lib/apt/lists/*

CMD ["minio"]
