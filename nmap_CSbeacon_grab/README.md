# nmap_beacon_grab

![Docker Pulls](https://img.shields.io/docker/pulls/bruteforce/nmap_beacon_grab.svg)

> Light weight Nmap container that uses grab_beacon_config.nse to parse Cobalt Strike Beacon for a given host.

- [Docker Container](https://hub.docker.com/r/bruteforce/nmap_beacon_grab) on Docker Hub
- [Dockerfile](https://github.com/beerMT/nmap_beacon_grab/blob/main/nmap_beacon_grab.Dockerfile) on GitHub

## Usage

To run the script against an IP target:
```bash
docker run --rm bruteforce/nmap_beacon_grab --script grab_beacon_config -Pn <target>
```
> `--script` executes the grab_beacon_config NSE script after the target is scanned.

> `--rm` will automatically remove the container upon exiting.

To receive details about the script:
```bash
docker run --rm bruteforce/nmap_beacon_grab --script-help grab_beacon_config
```

> `--script-help` will provide a short description of the script.


## Target Selection

To determine an IP target to scan, visit Shodan and input the JARM fingerprint to identify active infrastructure that is hosting the Cobalt Strike server (false positives are still possible with JARM's fuzzy hash) :

```bash
ssl.jarm:07d14d16d21d21d07c42d41d00041d24a458a375eef0c576d23a7bab9a9fb1
```
> `https://github.com/cedowens/C2-JARM` this site has good fingerprints for C2 infrastructure.

Or you can go fingerprint targets that you identify and want to explore, in this case you can launch a Jupyter Notebook in a MyBinder docker container by going here:

```bash
https://github.com/beerMT/jarmJupy
```
> `The screen capture shows the startup process and interacting with the notebook inside the MyBinder browser environment.`
