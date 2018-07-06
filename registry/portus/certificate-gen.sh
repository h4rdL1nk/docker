#!/bin/bash

. env.sh

[ ! -d ${CERTS_DIR} ] && mkdir -p ${CERTS_DIR}

openssl req -newkey rsa:2048 -nodes -keyout ${CERTS_DIR}${FQDN}.key -x509 -days 365 -out ${CERTS_DIR}${FQDN}.pem
