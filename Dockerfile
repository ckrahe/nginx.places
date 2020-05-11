FROM nginx:latest

MAINTAINER Chris Krahe

#ENV PORT=80
#ENV APP_HOST=placesapp
#ENV APP_PORT=3000

COPY ./src/conf.d/default.conf /etc/nginx/conf.d/
