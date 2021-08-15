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

# Error: /src/github.com/haccer/subjack/fingerprints.json: no such file or directory
# Since this project is built with go get, the config path is different and you need to use the -c flag
# -c /go/pkg/mod/github.com/haccer/subjack@v0.0.0-20201112041112-49c51e57deab/fingerprints.json