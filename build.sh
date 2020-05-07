#!/usr/bin/env bash

if [[ -z "${PLACES_APP_HOST}" ]]; then
  read -r -p 'App host: ' PLACES_APP_HOST
  export PLACES_APP_HOST
fi
if [[ -z "${PLACES_APP_PORT}" ]]; then
  read -r -p 'App port: ' PLACES_APP_PORT
  export PLACES_APP_PORT
fi

mkdir -p dist/default.d
envsubst < src/default.d/places.conf > dist/default.d/places.conf