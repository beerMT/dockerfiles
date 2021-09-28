FROM python:3.9-slim-buster
RUN apt-get update && \
    apt-get install -y git
RUN git clone https://github.com/superhedgy/AttackSurfaceMapper
WORKDIR /AttackSurfaceMapper
RUN pip3 install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python3", "/AttackSurfaceMapper/asm.py"]