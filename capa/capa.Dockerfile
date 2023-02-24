#Updated for CAPA 5.0.0 - 2/23/23
FROM python:3.9-slim-buster
RUN apt-get update && \
    apt-get install -y git
RUN pip install flare-capa
#Handle capa-rules import
RUN git clone https://github.com/mandiant/capa-rules
WORKDIR /capa-rules
ENTRYPOINT ["capa"]

#Repo (Prod) Build: $ docker pull bruteforce/capa
#Repo (Prod) Run: $ docker run --rm -v $(pwd)/test.dll:/capa-rules/test.dll bruteforce/capa \
#   -r /capa-rules --color auto test.dll

# May have to run $ docker login and insert credentials if it fails to pull base image
#Local (Dev) Build: $ docker build -t capa -f capa.Dockerfile .
#Local (Dev) Run: $ docker run --rm -v $(pwd)/test.dll:/capa-rules/test.dll capa -r /capa-rules --color auto test.dll
