
FROM alpine:latest
LABEL MAINTAINER="https://github.com/mdarif76769/Evil-Phisher"
WORKDIR /Evil-Phisher
COPY . /Evil-Phisher
RUN apk add --no-cache bash ncurses curl unzip wget php php83-cli
RUN chmod +x Evil_Phisher.sh
CMD ["/bin/bash", "./Evil_Phisher.sh"]
