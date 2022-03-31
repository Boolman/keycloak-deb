# Keycloak ubuntu package
Download and package keycloak to .deb file  

## Install requirements
```bash
$ nix develop
```


## Example config file
```bash
$ cat .env 
MAINTAINER=boolman
VERSION=17.0.0-0
KEYCLOAK_VERSION=17.0.0
NAME=keycloak
```

## Build
```bash
$ task
```
