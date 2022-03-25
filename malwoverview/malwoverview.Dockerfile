#Updated for Malwoverview 5.0.0 - 3/25/22
FROM python:3.8-slim-buster
#You need to install the libmagic1 package from Debian
RUN apt-get update && \
    apt-get install -y --no-install-recommends git libmagic1
RUN pip install git+https://github.com/alexandreborges/malwoverview
ENTRYPOINT ["malwoverview.py"]

#Repo (Prod) Build: $ docker pull bruteforce/malwoverview
#Repo (Prod) Run: $ docker run --rm -v $(pwd)/malwapi.conf:/root/.malwapi.conf \
#   -v $(pwd)/test.dll:/malwoverview/test.dll bruteforce/malwoverview \
#   -f /malwoverview/test.dll -v2

#Local (Dev) Build: $ docker build -t malwoverview -f malwoverview.Dockerfile .
#Local (Dev) Run: $ docker run --rm -v $(pwd)/malwapi.conf:/root/.malwapi.conf \ 
#   -v $(pwd)/test.dll:/malwoverview/test.dll malwoverview \
#   -f /malwoverview/test.dll -v2
