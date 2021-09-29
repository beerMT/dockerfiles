# AttackSurfaceMapper_docker

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/attack_surface_mapper.svg)

> Docker container that runs the AttackSurfaceMapper Python script.

- [Docker Container](https://hub.docker.com/r/bruteforce/attack_surface_mapper) on Docker Hub
- [Dockerfile](https://github.com/beerMT/dockerfiles/blob/main/attackSurfaceMapper/attackSurfaceMapper.Dockerfile) on GitHub

## Usage

This tool requires a keylist.asm file that contains the API keys for the lookups. This is passed in during container creation by copying the file from the mount volume, into the project directory. Since this container is being built and run inside of Jupyter Notebooks, the Dockerfile has been structured to remove the default keylist.asm during image creation. Then on container build/run, the keylist.asm is copied in with a bash command and then the asm.py python script is executed with the appropriate arguments.

To run the tool against a target list with the Entrypoint commented out and no keylist.asm in the AttackSurfaceMapper dir:
```bash
docker run -v $(pwd):/mnt/ bruteforce/attack_surface_mapper bash -c "cp /mnt/keylist.asm /AttackSurfaceMapper/ && python asm.py -t DOMAIN_TLD -w resources/top100_sublist.txt -o /mnt/DOMAIN_TLD"
```

To run the tool against a target list with the Entrypoint uncommented:
```bash
docker run --rm -v $(pwd):/mnt bruteforce/attack_surface_mapper -t DOMAIN_TO_SCAN -w resources/top100_sublist.txt -o /mnt/OUTPUT_FOLDER_NAME
```

## References
* https://github.com/superhedgy/AttackSurfaceMapper (THE project - hats off to a cool tool!)
