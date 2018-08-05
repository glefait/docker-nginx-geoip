#/bin/sh

MAXMIND_VERSION=`curl --silent "https://api.github.com/repos/maxmind/libmaxminddb/releases/latest" | grep -Po '"tag_name": "\K([^"]+)'`

docker build --build-arg MAXMIND_VERSION=${MAXMIND_VERSION} --tag="glefait/nginx-geoip:latest" .