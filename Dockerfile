FROM python:3.8.0-alpine3.10
LABEL maintainer "Manaki <manakinaoe@gmail.com>"

WORKDIR /usr/src/app

RUN set -xe && \
    apk add --no-cache --update \
        alpine-sdk \
        libffi \
        libffi-dev \
        openssl \
        openssl-dev && \
    pip install --upgrade pip && \
    pip install --no-cache-dir \
        oci \
        oci-cli

ENTRYPOINT ["/usr/local/bin/oci"]