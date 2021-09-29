FROM python:3.9-slim-buster
RUN apt-get update && \
    apt-get install -y git
RUN git clone https://github.com/superhedgy/AttackSurfaceMapper
WORKDIR /AttackSurfaceMapper
RUN rm keylist.asm
RUN pip3 install --no-cache-dir -r requirements.txt
#ENTRYPOINT ["python", "asm.py"]

# remove keylist.asm so that on volume mount a new one can be passed in
#docker build -t asm -f attackSurfaceMapper.Dockerfile .