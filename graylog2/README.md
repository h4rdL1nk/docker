
#Create replication key
openssl rand -base64 640 >ssl/replication.key

#Change replication key file permissions ( 999 is the internal UID for mongodb user )
chown 999:999 ssl/*
chmod 0600 ssl/replication.key

#Start the environment
docker-compose up -d

#Check started containers
docker-compose ps

#Initiate replica set
docker exec -it graylog2_mongo-rs-01_1 mongo /deploy/rs_initiate.js
