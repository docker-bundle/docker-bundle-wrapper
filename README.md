# Docker bundle wrapper

Run docker-bundle in a tiny docker container.

# Installation

###  Mac, Linux:
1. Require Docker

2. Put this code into your .bashrc/.zshrc/.bash_profile
```
alias docker-bundlew='docker run -it --rm -w "${PWD}" -v "${PWD}:${PWD}"\
                      -v //var/run/docker.sock:/var/run/docker.sock\
                      -v wrapper-sbin:/usr/local/sbin/\
                      -v wrapper-bundle:/root/.docker-bundle/\
                      dockerbundle/wrapper'
```
3.  test docker-bundlew
```
$ docker-bundlew

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
Complete
