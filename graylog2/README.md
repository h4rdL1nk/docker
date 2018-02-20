
openssl rand -base64 640 >ssl/replication.key
chown 999:999 ssl/*
chmod 0600 ssl/replication.key
docker-compose up -d
docker exec -it graylog2_mongo-rs-01_1 mongo /deploy/rs_initiate.js
