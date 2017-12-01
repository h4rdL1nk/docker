
docker run \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $PWD/persistence:/var/jenkins_home \
    -p 8080:8080 -d --name jenkins-run jenkins-tid
