# malwoverview_docker

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/malwoverview.svg)

>Docker container that sets up pre-reqs and then installs the Malwoverview project.

- [Docker Container](https://hub.docker.com/r/bruteforce/malwoverview) on Docker Hub
- [Dockerfile](https://github.com/beerMT/malwoverview_docker/blob/main/malwoverview.Dockerfile) on GitHub

## Usage

Follow the directions from Malwoverview to setup the .malwapi.conf with the necessary API keys. In the below example, it starts out as unhidden file (malwapi.conf) on the host machine and then gets mounted as a hidden file (.malwapi.conf) within the /root folder. This is default directory and format that Maloverview expects for the file.

To run the Malwoverview tool against a file and perform a VT lookup:
```bash
docker run --rm -v $(pwd)/malwapi.conf:/root/.malwapi.conf \ 
   -v $(pwd)/test.dll:/malwoverview/test.dll bruteforce/malwoverview \
   -f /malwoverview/test.dll -v2
```
> `-v` the first -v flag mounts the malwapi.conf file into the correct location within the container. The second -v flag passes in the file to be  scanned by the various APIs.

> `-f` specifies a full path to a file.

> `-v2` is a VT lookup that shows antivirus reports from the main players.
 

## References

Additional arguments and instruction can be found at the project's page:
* https://github.com/alexandreborges/malwoverview
