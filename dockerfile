FROM node:latest
WORKDIR /cors 

ENV CORSANYWHERE_BLACKLIST=''
ENV CORSANYWHERE_RATELIMIT='1000 1'

RUN apt update \
	&& apt install -y git \
	&& git clone https://github.com/RulexNODE/cors-anywhere . \
	&& rm -rf /var/lib/apt/lists/*

RUN npm install --only=production

CMD ["node", "server.js"]
