# subtocheck_docker

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/subtocheck.svg)

> Docker container that builds the subtocheck Go project.

- [Docker Container](https://hub.docker.com/r/bruteforce/subtocheck) on Docker Hub
- [Dockerfile](https://github.com/beerMT/dockerfiles/blob/main/subtocheck/subtocheck.Dockerfile) on GitHub

## Usage

To run the tool against a target list:
```bash
docker run --rm -v$(pwd):/mnt bruteforce/subtocheck --domains=/mnt/domains.txt
```

## References
* https://github.com/jonhadfield/subtocheck (THE project - hats off to a cool tool!)
