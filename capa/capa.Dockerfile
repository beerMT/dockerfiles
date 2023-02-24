#Updated for CAPA 5.0.0 - 2/23/23
FROM python:3.9-slim-buster
RUN apt-get update && \
    apt-get install -y git wget
RUN pip install flare-capa
#Handle capa sigs import
RUN mkdir sigs
WORKDIR /sigs
RUN wget https://github.com/mandiant/capa/raw/master/sigs/1_flare_msvc_rtf_32_64.sig
RUN wget https://github.com/mandiant/capa/raw/master/sigs/2_flare_msvc_atlmfc_32_64.sig
RUN wget https://github.com/mandiant/capa/raw/master/sigs/3_flare_common_libs.sig
#Handle capa-rules import
WORKDIR /
RUN git clone https://github.com/mandiant/capa-rules
WORKDIR /capa-rules
ENTRYPOINT ["capa"]

#Repo (Prod) Build: $ docker pull bruteforce/capa
#Repo (Prod) Run: $ docker run --rm -v $(pwd)/test.dll:/capa-rules/test.dll bruteforce/capa \
#   -r /capa-rules --color auto test.dll

# May have to run $ docker login and insert credentials if it fails to pull base image
#Local (Dev) Build: $ docker build -t capa -f capa.Dockerfile .
#Local (Dev) Run: $ docker run --rm -v $(pwd)/test.dll:/capa-rules/test.dll capa -r /capa-rules --color auto test.dll