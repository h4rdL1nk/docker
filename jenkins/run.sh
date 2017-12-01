
docker run \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $HOME/persistence:/var/lib/jenkins \
    -p 8080:8080 -d --name jenkins-run jenkins-tid
