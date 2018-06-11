# Docker bundle wrapper

Run docker-bundle in a tiny docker container.	

# Installation


* Require [Docker](https://docs.docker.com/install/)

###  Mac, Linux:

* Put this code into your .bashrc/.zshrc/.bash_profile
```
alias docker-bundlew="docker run -it --rm -w \"\${PWD}\" -v \"\${PWD}:\${PWD}\"\
                      -v //var/run/docker.sock:/var/run/docker.sock\
                      -v wrapper-sbin:/usr/local/sbin/\
                      -v wrapper-bundle:/root/.docker-bundle/\
                      dockerbundle/wrapper"
```
or put
```
#!/bin/bash

docker run -it --rm -w "${PWD}" -v "${PWD}:${PWD}"\
                      -v //var/run/docker.sock:/var/run/docker.sock\
                      -v wrapper-sbin:/usr/local/sbin/\
                      -v wrapper-bundle:/root/.docker-bundle/\
                      dockerbundle/wrapper $*
```
into `docker-bundle` file and run `chmod +x docker-bundle`.

###  Windows:
* Put this code into `docker-bundlew.bat`
```
@echo off
set DIR=\%CD%\
set DIR=%DIR:\=/%
set DIR=%DIR::=%
docker run -it --rm -w "%DIR%" -v "%DIR%:%DIR%"^
                      -v //var/run/docker.sock:/var/run/docker.sock^
                      -v wrapper-sbin:/usr/local/sbin/^
                      -v wrapper-bundle:/root/.docker-bundle/^
                      dockerbundle/wrapper %*
```

#  Run docker-bundlew
```

> docker-bundlew

    Docker-bundle

Usage:
    docker-bundle [options] [COMMAND] [ARGS...]

Options:
    -h|--help
    -v|--version
    -e|--environment <ENV>                  Set environment variables to commands
       --check-upgrade                      Check self upgrade before action
       --upgrade                            Do self upgrade directly (without ask) if upgrade available

Commands:
    install                       Install bundle here
    search                        Search for bundle you want
    source                        Manage sources
```

## Enjoy It!
