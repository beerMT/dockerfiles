FROM python:3.9-slim-buster
RUN apt-get update && \
    apt-get install -y git
RUN git clone https://github.com/superhedgy/AttackSurfaceMapper
WORKDIR /AttackSurfaceMapper
RUN rm keylist.asm
RUN pip3 install --no-cache-dir -r requirements.txt
#ENTRYPOINT ["python", "asm.py"]

# remove keylist.asm so that on volume mount a new one can be copied in
#docker build -t asm -f attackSurfaceMapper.Dockerfile .
#docker run -v $(pwd):/mnt/ bruteforce/attack_surface_mapper bash -c "cp /mnt/keylist.asm /AttackSurfaceMapper/ && python asm.py -t DOMAIN_TLD -w resources/top100_sublist.txt -o /mnt/DOMAIN_TLD"