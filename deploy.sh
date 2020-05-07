#!/bin/bash -x
sudo cp dist/default.d/* /etc/nginx/default.d/
sudo service nginx restart