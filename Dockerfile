# syntax=docker/dockerfile:1

FROM golang:latest

LABEL maintainer="Islam bassuni <islambassuni@gmail.com>"

WORKDIR /app

COPY . .

RUN go build -o bin/runnable -v .

EXPOSE 5000

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

CMD ["heroku","local","web"]


