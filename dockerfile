FROM ubuntu:18
WORKDIR /cors

ARG PORT
ARG CORSANYWHERE_WHITELIST
ARG CORSANYWHERE_BLACKLIST
ARG CORSANYWHERE_RATELIMIT

RUN apt update \
	&& apt install -y git \
	&& git clone https://github.com/Rob--W/cors-anywhere . \
	&& rm -rf /var/lib/apt/lists/*

CMD ["node", "server.js"]
