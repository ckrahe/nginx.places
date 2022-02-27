# nginx.places
NGINX component for Places app. Proxies requests to Places UI.

## Prerequisites
* Places app instance or container
* App container has network alias _placesapp_ (default)

## Deployment methods

### Docker Compose

This is the easiest deployment method, and it's done not here but in docker.places.
It assembles the Docker network comprised of each Places container, relying on the
Dockerfile and supporting files within each. Check it out.

### Manual network

I used this method when I was learning about Docker networks but before I leveraged Docker Compose.

_We assume nginx.conf server includes conf.d/default.conf_

1. docker build ... { --build-arg PORT_ARG=_port_ } { --build-arg _name_=_value_} ...
1. docker run ... -p _port_:_port_ ...
1. docker network connect ...

_See Dockerfile for other build-args and defaults_

### Container customization

This method, the one I created first, is the most labor-intensive.  It doesn't use Dockerfile at all, instead
relying on you to first build a container from the standard nginx image

_We assume nginx.conf server includes default.d/*_

1. Run build.sh (pre-set environment variables to avoid prompts)
1. Run deploy.sh

## Use

*  Browse to http://host.port/places/