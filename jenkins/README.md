
#Run the container

docker run --name jenkins-tid-run -p8080:8080 -d --network host -v /var/run/docker.sock:/var/run/docker.sock jenkins-tid