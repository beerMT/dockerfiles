# CrossLinked_docker

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/crosslinked.svg)

>Docker container that installs the CrossLinked project from the associated project's GitHub repo and pip installs additional requirements.

- [Docker Container](https://hub.docker.com/r/bruteforce/crosslinked) on Docker Hub
- [Dockerfile](https://github.com/beerMT/dockerfiles/blob/main/crossLinked/crosslinked.Dockerfile) on GitHub

## Usage

To run the tool against an organization to determine valid email addresses, it helps to try a few different naming schemas to build out a robust target list:

```bash
docker run --rm -v $(pwd):/mnt crosslinked -f '{first}.{last}@ORG.com' ORG -o /mnt/first_dot_last_emails.txt
```

```bash
docker run --rm -v $(pwd):/mnt crosslinked -f '{f}{last}@ORG.com' ORG -o /mnt/f_last_emails.txt
```

```bash
docker run --rm -v $(pwd):/mnt crosslinked -f '{f}.{last}@ORG.com' ORG -o /mnt/f_dot_last_emails_test.txt
```

```bash
docker run --rm -v $(pwd):/mnt crosslinked -f '{first}@ORG.com' ORG -o /mnt/first_emails_test.txt
```

## References

- <https://github.com/m8r0wn/CrossLinked>
