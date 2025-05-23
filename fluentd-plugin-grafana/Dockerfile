# Build stage
FROM fluent/fluentd-kubernetes-daemonset:v1.17.1-debian-elasticsearch7-1.2 AS builder
USER root
RUN apt-get update && \
    apt-get install -y build-essential && \
    gem install fluent-plugin-grafana-loki

# Final stage
FROM fluent/fluentd-kubernetes-daemonset:v1.17.1-debian-elasticsearch7-1.2
USER root
# Copy the installed gem from the builder stage
COPY --from=builder /usr/local/bundle /usr/local/bundle
USER fluent
