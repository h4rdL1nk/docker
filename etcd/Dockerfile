FROM alpine:3.6

ENV ETCD_VER 3.3.2
ENV ETCD_ARCH amd64

RUN apk --no-cache update \
    && apk --no-cache add curl tzdata \
    && ln -sf /usr/share/zoneinfo/Europe/Madrid /etc/localtime \
    && curl -sL https://github.com/coreos/etcd/releases/download/v${ETCD_VER}/etcd-v${ETCD_VER}-linux-${ETCD_ARCH}.tar.gz \
       | tar -xzf - \
    && apk del curl \
    && rm -rf /var/cache/apk/* \
    && cp etcd-v${ETCD_VER}-linux-${ETCD_ARCH}/etcd* /bin/ \
    && rm -rf etcd-v${ETCD_VER}-linux-${ETCD_ARCH}

EXPOSE 2379
EXPOSE 2380

ENTRYPOINT ["/bin/etcd"]

