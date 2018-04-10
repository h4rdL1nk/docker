
#Run the container

docker run --name jenkins-tid-run -p8080:8080 -d --network host -v /var/run/docker.sock:/var/run/docker.sock jenkins-tid

#Useful options

  - Heap memory allocation: -Xmx24576m 
  - Disable Java JNDI LDAP pooling: -Dcom.sun.jndi.ldap.connect.pool.protocol=DIGEST-MD5

#Running dockerd in Openstack VM

dockerd option "mtu" must be set to a value>=1500. If not set, there will be issues like TLS connections hanging until reset.