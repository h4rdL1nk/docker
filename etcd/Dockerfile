FROM alpine:3.6

ENV ETCD_VER 3.3.2
ENV ETCD_ARCH amd64

RUN apk update \
    && apk add curl tzdata \
    && ln -sf /usr/share/zoneinfo/Europe/Madrid /etc/localtime \
    && curl -sL https://github.com/coreos/etcd/releases/download/v${ETCD_VER}/etcd-v${ETCD_VER}-linux-${ETCD_ARCH}.tar.gz \
       | tar -xzf - \
    && cp etcd-v${ETCD_VER}-linux-${ETCD_ARCH}/etcd* /bin/ \
    && rm -rf etcd-v${ETCD_VER}-linux-${ETCD_ARCH}

EXPOSE 2379
EXPOSE 2380

#etcd --listen-peer-urls 'http://127.0.0.1:2380' --listen-client-urls 'http://127.0.0.1:2379' --advertise-client-urls 'http://127.0.0.1:2379'

ENTRYPOINT ["/bin/etcd"]

