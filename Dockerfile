FROM alpine:latest
LABEL MAINTAINER="https://github.com/mdarif76769/evil-phisher"
WORKDIR /evil-phisher
COPY . /evil-phisher
RUN apk add --no-cache bash ncurses curl unzip wget php83 php83-cli
RUN chmod +x Evil_Phisher.sh
CMD ["/bin/bash", "./Evil_Phisher.sh"]
