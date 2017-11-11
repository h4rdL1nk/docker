FROM alpine:3.6

ENV ETCD_VER 3.2.9
ENV ETCD_ARCH amd64

RUN apk update \
    && apk add curl \
    && curl -sL https://github.com/coreos/etcd/releases/download/v${ETCD_VER}/etcd-v${ETCD_VER}-linux-${ETCD_ARCH}.tar.gz \
       | tar -xzf - \
    && cd etcd-v${ETCD_VER}-linux-${ETCD_ARCH} \
    && cp etcd etcdctl /usr/bin/

EXPOSE 2739
EXPOSE 2780

ENTRYPOINT ["etcd"]

