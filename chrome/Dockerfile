FROM debian:stretch
MAINTAINER Peter Etelej <peter@etelej.com>

RUN apt-get update \
	&& apt-get install -y wget \
	&& wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
	&& dpkg -i google-chrome*.deb \
	&& apt-get purge --auto-remove -y wget \
	&& rm -rf /var/lib/apt/lists/*
