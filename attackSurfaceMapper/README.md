# AttackSurfaceMapper_docker

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/attack_surface_mapper.svg)

> Docker container that runs the AttackSurfaceMapper Python script.

- [Docker Container](https://hub.docker.com/r/bruteforce/attack_surface_mapper) on Docker Hub
- [Dockerfile](https://github.com/beerMT/dockerfiles/blob/main/attackSurfaceMapper/attackSurfaceMapper.Dockerfile) on GitHub

## Usage

To run the tool against a target list:
```bash
docker run --rm -v$(pwd):/mnt bruteforce/attack_surface_mapper -t DOMAIN_TO_SCAN -w resources/top100_sublist.txt -o OUTPUT_FOLDER_NAME
```

## References
* https://github.com/superhedgy/AttackSurfaceMapper (THE project - hats off to a cool tool!)
