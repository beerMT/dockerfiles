FROM alpine:latest

LABEL maintainer="beerMT"

RUN apk -U upgrade && apk add --no-cache \
    wget \
    nmap \
    nmap-scripts \
    && rm -rf /var/cache/apk/*

WORKDIR nmap-scripts/

#run wget to bring in grab_beacon_config.nse
RUN wget https://raw.githubusercontent.com/whickey-r7/grab_beacon_config/main/grab_beacon_config.nse

ENTRYPOINT ["/usr/bin/nmap"]

#BUILD: docker build -t nmapbeacon -f nmap_beacon_grab.Dockerfile .
#RUN: docker run --rm nmapbeacon --script grab_beacon_config -Pn <host>
