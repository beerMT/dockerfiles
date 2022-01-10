FROM python:3.8-slim-buster
RUN apt-get update \
    && apt-get install -y git
RUN git clone https://github.com/m8r0wn/CrossLinked.git
WORKDIR /CrossLinked
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "crosslinked.py"]

#docker build -t crosslinked -f crosslinked.Dockerfile .
#docker run --rm -v $(pwd):/mnt crosslinked -f '{first}.{last}@ORG.com' ORG -o /mnt/emails_test.txt
#docker run --rm -v $(pwd):/mnt crosslinked -f '{f}{last}@ORG.com' ORG -o /mnt/emails_test.txt
#docker run --rm -v $(pwd):/mnt crosslinked -f '{f}.{last}@ORG.com' ORG -o /mnt/emails_test.txt
#docker run --rm -v $(pwd):/mnt crosslinked -f '{first}@ORG.com' ORG -o /mnt/emails_test.txt
