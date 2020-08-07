FROM node:alpine
RUN apk add --no-cache make py3-pip python3-dev libffi-dev openssl-dev gcc libc-dev && pip3 install docker-compose

