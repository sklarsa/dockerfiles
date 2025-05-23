#!/bin/bash

TAG=0.0.2

podman build --platform linux/amd64 -t docker.io/sklarsa/fluentd-loki:$TAG .
podman push docker.io/sklarsa/fluentd-loki:$TAG
