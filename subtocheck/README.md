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

## Issues
With the latest build (Aug '21), there was an error triggering during command execution - Fingerprint.json error. The following flag passed into the command helps resolve this:

```bash
-c /go/pkg/mod/github.com/haccer/subjack@v0.0.0-20201112041112-49c51e57deab/fingerprints.json
```

## References
* https://github.com/jonhadfield/subtocheck (THE project - hats off to a cool tool!)
