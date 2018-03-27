
#This docker-compose file covers the creation of a 3 nodes replicaset
#With the execution of the commands, we initiate the replicaset and create admin and cluster users

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
docker exec -it mongodb_mongo-rs0-01_1 mongo /deploy/rs_initiate.js

#Add admin user
docker exec -it mongodb_mongo-rs0-01_1 mongo admin /deploy/admin_user_add.js

#Add cluster admin user
docker exec -it mongodb_mongo-rs0-01_1 mongo -u root -p r00t admin /deploy/rs_user_add.js

#Connect as cluster admin user
docker exec -it mongodb_mongo-rs0-01_1 mongo -u rsAdmin -p rs4dm1n admin
