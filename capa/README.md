# capa_docker

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/capa.svg)

>Docker container that installs the FE CAPA project from PyPi and clones the capa-rules to a working directory.

- [Docker Container](https://hub.docker.com/r/bruteforce/capa) on Docker Hub
- [Dockerfile](https://github.com/beerMT/dockerfiles/blob/main/capa/capa.Dockerfile) on GitHub

## Usage

To run the CAPA tool against a file for inspection:
```bash
docker run --rm -v $(pwd)/test.dll:/capa-rules/test.dll bruteforce/capa -r /capa-rules --color auto test.dll
```

> `-v` mounts the file to be analyzed into the container

> `-r` sets the directory path for the capa-rules

> `--color` stylized output is optional

## References

* https://www.fireeye.com/blog/threat-research/2020/07/capa-automatically-identify-malware-capabilities.html
* https://github.com/fireeye/capa 
