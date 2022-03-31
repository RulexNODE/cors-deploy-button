FROM node:latest
WORKDIR /cors

ENV CORSANYWHERE_BLACKLIST=''
ENV CORSANYWHERE_RATELIMIT='1000 1'
ENV PORT='443'

RUN apt update \
	&& apt install -y git \
	&& git clone https://github.com/Rob--W/cors-anywhere . \
	&& rm -rf /var/lib/apt/lists/*

RUN npm install --only=production

CMD ["node", "server.js"]
