# Self-host minecraft server


## Information
Server based on minecraft 1.12.2 forge 14.23.5.2860

Mods and world directories are forwarded to the docker container. Made for ease of server modification

## Structure
```
.
|-- Dockerfile
|-- Makefile
|-- README.md
|-- docker-compose.yml
|-- eula.txt
|-- minecraft
|   |-- banned-ips.json
|   |-- banned-players.json
|   |-- config
|   |-- eula.txt
|   |-- forge.jar
|   |-- libraries
|   |-- logs
|   |-- minecraft_server.1.12.2.jar
|   |-- mods
|   |-- ops.json
|   |-- server.properties
|   |-- usercache.json
|   |-- usernamecache.json
|   |-- whitelist.json
|   `-- world
|-- mods
|-- server.properties
`-- world
```

## Deploy



Run bash command in root dir.


```bash
make build && make init
```

Deploy requires docker and docker compose
