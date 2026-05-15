FROM alpine:latest
LABEL MAINTAINER="https://github.com/mdarif76769/Evil-Phisher"
WORKDIR /Evil-Phisher/
ADD . /Evil-Phisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./Evil_Phisher.sh"
