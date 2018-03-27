
docker run \
    -e JAVA_OPTS="-Xmx512m -Dcom.sun.jndi.ldap.connect.pool.protocol=DIGEST-MD5 -Dorg.apache.commons.jelly.tags.fmt.timeZone=Europe/Madrid" \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -p 8080:8080 -d --name jenkins-run jenkins:alpine
