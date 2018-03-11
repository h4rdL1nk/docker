FROM alpine:3.6

ENV ETCD_VER 2.2.5
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

##Add node
#docker exec -it etcd_etcd0_0_1 etcdctl member add etcd0_3 http://etcd0_3:2380
#docker run --rm --name etcd0_3 --network etcd_etcd-cluster 5dbd5421f524 -name etcd0_3 --listen-peer-urls http://0.0.0.0:2380 --listen-client-urls http://0.0.0.0:2379 --advertise-client-urls http://etcd0_3:2379 --initial-advertise-peer-urls http://etcd0_3:2380 --initial-cluster etcd0_0=http://etcd0_0:2380,etcd0_1=http://etcd0_1:2380,etcd0_2=http://etcd0_2:2380,etcd0_3=http://etcd0_3:2380 -initial-cluster-token etcd0 -initial-cluster-state existing

ENTRYPOINT ["/bin/etcd"]

