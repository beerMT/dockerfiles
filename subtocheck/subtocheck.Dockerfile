FROM golang:latest

# update
RUN apt-get update && apt-get install git locales dnsutils -y

# Set default locale for the environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
WORKDIR /go/src/
RUN git clone https://github.com/jonhadfield/subtocheck.git
WORKDIR /go/src/subtocheck/cmd/subtocheck/
RUN     go build -o /usr/local/bin/subtocheck
WORKDIR /go/src/subtocheck
ENTRYPOINT ["/usr/local/bin/subtocheck"]

#input will be domains.txt
#docker build -t subtocheck -f subtocheck.Dockerfile .
#docker run --rm -v$(pwd):/mnt subtocheck --domains=/mnt/domains.txt
