FROM nginx:latest

MAINTAINER Chris Krahe

ENV PLACES_WEB_PORT=80
ENV PLACES_APP_HOST=placesapp
ENV PLACES_APP_PORT=3000

COPY ./src/conf.d/default.conf /etc/nginx/conf.d/

RUN 'envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf'