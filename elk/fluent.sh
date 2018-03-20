docker build -t fluentd-elastic dockerfiles/fluentd
docker run -d --network elk_es-cl0-net --name log-shipper -v /var/lib/docker:/data:ro -v $PWD/conf/fluentd.conf:/fluentd/etc/fluentd-alt.conf:ro -e FLUENTD_CONF=fluentd-alt.conf -e FLUENT_UID=1 fluentd-elastic
