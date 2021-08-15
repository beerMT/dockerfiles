# subjack_docker

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/subjack.svg)

> Docker container that builds the sub-jack Go project.

- [Docker Container](https://hub.docker.com/r/bruteforce/subjack) on Docker Hub
- [Dockerfile](https://github.com/beerMT/dockerfiles/blob/main/subjack/subjack.Dockerfile) on GitHub

## Usage

To run the script against an IP target:
```bash
docker run --rm -v $(pwd):/mnt/ bruteforce/subjack -c /go/pkg/mod/github.com/haccer/subjack@v0.0.0-20201112041112-49c51e57deab/fingerprints.json -w /mnt/tgt_list.txt -ssl -v -o /mnt/results.txt
```
> `-c` correctly sets the config path for fingerprints.json, since the project is built with go get command.

> `-o` output file containing results.

> `-v` verbose flag to see feedback.

> `-w` reads in the target list to enumerate against, this file directory is a mounted volume via the docker -v flag.

> `-ssl` will provide more fidelity by forcing the https session.

To receive details about sub-jack:
```bash
docker run --rm bruteforce/subjack -h
```

## References
* https://github.com/haccer/subjack (THE project - hats off to a cool tool!)
* https://hub.docker.com/r/txt3rob/sub-jack (this wasn't building properly and is a bit outdated, still helpful though in container dependencies)