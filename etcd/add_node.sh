#!/bin/bash

docker exec -it etcd_etcd0_0_1 etcdctl member add etcd0_3 http://etcd0_3:2380

docker run --rm --name etcd0_3 --network etcd_etcd-cluster e832c15f1f28 \
    -name etcd0_3 \
    --listen-peer-urls http://0.0.0.0:2380 \
    --listen-client-urls http://0.0.0.0:2379 \
    --advertise-client-urls http://etcd0_3:2379 \
    --initial-advertise-peer-urls http://etcd0_3:2380 \
    --initial-cluster etcd0_0=http://etcd0_0:2380,etcd0_1=http://etcd0_1:2380,etcd0_2=http://etcd0_2:2380,etcd0_3=http://etcd0_3:2380 \
    -initial-cluster-token etcd0 \
    -initial-cluster-state existing
