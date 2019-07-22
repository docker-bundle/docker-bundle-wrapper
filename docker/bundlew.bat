@echo off
set DIR=\%~dp0..\
set DIR=%DIR:\=/%
set DIR=%DIR::=%
docker run -it --rm -w "%DIR%" -v "%DIR%:%DIR%"^
                      -v //var/run/docker.sock:/var/run/docker.sock^
                      -v wrapper-slim-sbin:/usr/local/sbin/^
                      dockerbundle/wrapper:slim %*
