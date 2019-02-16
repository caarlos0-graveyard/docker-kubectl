FROM alpine
ARG K8S_VERSION=v1.9.7
RUN apk --update upgrade    && \
    apk add ca-certificates && \
    rm -rf /var/cache/apk/* && \
    wget -O /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$K8S_VERSION/bin/linux/amd64/kubectl && \
    chmod +x /usr/bin/kubectl
RUN mkdir -p /root/.kube /github/home/.kube/

ENTRYPOINT ["/usr/bin/kubectl"]
