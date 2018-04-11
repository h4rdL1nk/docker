
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
 

#Running dockerd in Openstack VM

dockerd option "mtu" must be set to a value>=1500. If not set, there will be issues like TLS connections hanging until reset.
