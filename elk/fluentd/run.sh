#!/bin/bash

docker run -v $PWD/conf/fluentd.conf:/fluentd/etc/fluentd.conf:ro -p24224:24224 -p9880:9880 fluent/fluentd
