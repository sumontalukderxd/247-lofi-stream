FROM jrottenberg/ffmpeg:4.4-alpine

RUN apk add --no-cache bash

WORKDIR /app

COPY . /app

RUN chmod +x /app/start.sh

ENTRYPOINT ["/bin/bash", "/app/start.sh"]
