FROM golang:latest

# update
RUN apt-get update && apt-get install git locales dnsutils -y

# Set default locale for the environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
WORKDIR /go/src/
RUN go get github.com/haccer/subjack
ENTRYPOINT ["/go/bin/subjack"]
