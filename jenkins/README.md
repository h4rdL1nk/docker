
#Run the container

docker run --name jenkins-tid-run -p8080:8080 -d --network host -v /var/run/docker.sock:/var/run/docker.sock jenkins-tid

#Useful options
  - JAVA_OPTS
    - Heap memory allocation: -Xmx24576m 
    - Disable Java JNDI LDAP pooling: -Dcom.sun.jndi.ldap.connect.pool.protocol=DIGEST-MD5
    - Timezone set: -Dorg.apache.commons.jelly.tags.fmt.timeZone=Europe/Madrid
  - JENKINS_OPTS
    - Enable SSL: --httpPort=-1 --httpsPort=8443
    - SSL with JKS: --httpsKeyStore=/ssl/keystore.jks --httpsKeyStorePassword=password
    - SSL with key/pem: --httpsCertificate=/ssl/cert.pem  --httpsPrivateKey=/ssl/cert.key

#JKS build 
  #Convert certificate to intermediate pkcs12 format
  openssl pkcs12 -export -out jenkins_keystore.p12 -passout 'pass:securepass' -inkey test.key -in test.pem -certfile ca-certs.pem -name *.wildcard.test
  #Convert pkcs12 into JKS keystore
  keytool -importkeystore -srckeystore jenkins_keystore.p12 -srcstorepass 'securepass' -srcstoretype PKCS12 -srcalias *.wildcard.test -deststoretype JKS -destkeystore jenkins_keystore.jks -deststorepass 'securepass' -destalias *.wildcard.test
  #Verify JKS keystore
  keytool -list -keystore jenkins_keystore.jks -storepass 'securepass'

#Running dockerd in Openstack VM

dockerd option "mtu" must be set to a value>=1500. If not set, there will be issues like TLS connections hanging until reset.
