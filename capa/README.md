# capa_docker

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/capa.svg)

>Docker container that installs the Mandiant CAPA project from PyPi and clones the capa-rules to a working directory in the container.

- [Docker Container](https://hub.docker.com/r/bruteforce/capa) on Docker Hub
- [Dockerfile](https://github.com/beerMT/dockerfiles/blob/main/capa/capa.Dockerfile) on GitHub

## Usage
To download the docker container from docker hub:
```bash
docker pull bruteforce/capa
```

To run the CAPA tool against a file for inspection:

```bash
docker run --rm -v $(pwd)/test.dll:/capa-rules/test.dll bruteforce/capa -r /capa-rules --color auto test.dll
```

> `-v` mounts the file to be analyzed into the container

> `-r` sets the directory path for the capa-rules

> `--color` stylized output is optional

## References

* https://www.mandiant.com/resources/capa-automatically-identify-malware-capabilities
* https://github.com/mandiant/capa
