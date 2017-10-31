# Docker Nicehash CPU Miner

I built this container so that I could mine ZEN under OSX using docker.

This runs the [Nicehash CPU miner](https://github.com/nicehash/nheqminer) for ZEN/ZEC.

It mines ZEN on zenmine.pro, but it appears to be inconsistent. Or zenmine.pro is slow to update.

## Pulling from Docker Hub

You can pull the latest copy of this container from [Docker Hub](https://hub.docker.com/r/froiland/nheqminer/)
by running:

```
$ docker pull froiland/nheqminer
```

**WARNING:** This container is ridiculously large. Maybe build it instead.

## Building the Container

Building the container is easy:

```
$ docker build -t froiland/nheqminer .
```

## Start up the miner

I've provided a config file for Docker Compose that you can use to start the container.

1. Copy `docker-compose.sample.yml` to `docker-compose.yml`
2. Edit the file and set your `ZEN_ADDR` in the environment.
3. Change `THREADS` if you want to, setting it to 75% of the actual CPU threads
on your system.
4. Launch it with `docker-compose up` and watch the magic happen! (Add `-d` to run the container in detached mode.)

This will fire up the daemon and start CPU mining with your hardware.

Don't get the black lung!

ZEN - znRyycXJ5ETxKaCiAk9TXudJAfiBoSfkrss
ETH - 0xFF280F02C21c7884B0a8dD4757c383cF02FD8c70
XMR - 41tgTaxJqiif5wedTF7PkiQ4S1JSWrUSDP4DDHVb96Ex9iyY5wMvDCN6vrJBCfgoGoN6sqVfxGW38F92NpQP3LugH9R9hRz
BTC - 12GwXH9oXACNNqHD5aM67ZQEYskmdiYxGy
