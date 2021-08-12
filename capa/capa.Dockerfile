FROM python:3.9-slim-buster
RUN apt-get update && \
    apt-get install -y git
RUN pip install flare-capa
#Handle capa-rules import
RUN git clone https://github.com/fireeye/capa-rules
WORKDIR /capa-rules
ENTRYPOINT ["capa"]

#Repo (Prod) Build: $ docker pull bruteforce/capa
#Repo (Prod) Run: $ docker run --rm -v $(pwd)/test.dll:/capa-rules/test.dll bruteforce/capa \
#   -r /capa-rules --color auto test.dll

#Local (Dev) Build: $ docker build -t capa -f capa.Dockerfile .
#Local (Dev) Run: $ docker run --rm -v $(pwd)/test.dll:/capa-rules/test.dll capa -r /capa-rules --color auto test.dll
