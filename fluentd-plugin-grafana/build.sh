#!/bin/bash

podman build -t docker.io/sklarsa/fluentd-loki:0.0.1 .
podman push docker.io/sklarsa/fluentd-loki:0.0.1
