FROM nginx:latest

MAINTAINER Chris Krahe

ARG PORT_ARG=80
ARG APP_HOST_ARG=placesapp
ARG APP_PORT_ARG=3000

ENV PORT=$PORT_ARG
ENV APP_HOST=$APP_HOST_ARG
ENV APP_PORT=$APP_PORT_ARG

COPY ./src/conf.d/default.conf /etc/nginx/conf.d/

RUN envsubst '$PORT $APP_HOST $APP_PORT' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf