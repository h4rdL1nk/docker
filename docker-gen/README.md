
sudo docker build -t docker-gen-run .

sudo docker run -it --entrypoint sh -v /var/run/docker.sock:/var/run/docker.sock:ro -e TEMPLATE_NAME=test gen-test
