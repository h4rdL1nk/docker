
sudo docker build -t docker-gen-run .

sudo docker run -it --rm -e TEMPLATE_NAME=test -v /var/run/docker.sock:/var/run/docker.sock:ro docker-gen-run 
