#!/usr/bin/env bash

if [[ -z "${APP_HOST}" ]]; then
  read -r -p 'App host: ' APP_HOST
  export APP_HOST
fi
if [[ -z "${APP_PORT}" ]]; then
  read -r -p 'App port: ' APP_PORT
  export APP_PORT
fi

mkdir -p dist/default.d
envsubst < src/default.d/places.conf > dist/default.d/places.conf