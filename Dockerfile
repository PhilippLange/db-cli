FROM python:alpine

LABEL maintainer="philipp.i.b.lange@gmail.com"

RUN pip install \
    databricks-cli \
    pytest \
    pylint \
    autopep8 \
    tox

ENV DATABRICKS_CONFIG_FILE="/workspaces/databricks_cli/.databrickscfg"

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
