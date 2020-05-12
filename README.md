# nginx.places
NGINX component for Places app. Proxies requests to Places UI.

## Pre-requisites
* Places app instance or container
* App container has network alias _placesapp_ (default)

## Standard deployment 
_We assume nginx.conf server includes default.d/*_

1. Run build.sh (pre-set environment variables to avoid prompts)
1. Run deploy.sh

## Docker network deployment
_We assume nginx.conf server includes conf.d/default.conf_
 
1. Modify Dockerfile if needed
1. docker build ...
1. docker run ... -p 80:80 ...
1. docker network add ...

## Use

*  Browse to http://host/places
