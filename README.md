# nginx.places
NGINX component for Places app. Proxies requests to Places UI.

## Prerequisites
* Places app instance or container
* App container has network alias _placesapp_ (default)

## Standard deployment 
_We assume nginx.conf server includes default.d/*_

1. Run build.sh (pre-set environment variables to avoid prompts)
1. Run deploy.sh

## Docker network deployment
_We assume nginx.conf server includes conf.d/default.conf_
 
1. docker build ... { --build-arg PORT_ARG=_port_ } { --build-arg _name_=_value_} ...
1. docker run ... -p _port_:_port_ ...
1. docker network connect ...

_See Dockerfile for other build-args and defaults_

## Use

*  Browse to http://host:port/places/
