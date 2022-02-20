FROM docker:20.10 as docker
FROM alpine:3.15

RUN apk update && apk upgrade

RUN apk add docker-compose

COPY --from=docker /usr/local/bin/docker /usr/local/bin/