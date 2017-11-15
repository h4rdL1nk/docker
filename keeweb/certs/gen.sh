
openssl req \
	-x509 \
	-sha256 \
	-nodes \
	-newkey rsa:2048 \
	-days 365 \
	-subj "/CN=127.0.0.1" \
	-keyout key.pem \
	-out cert.pem 

openssl dhparam \
	-out dh.pem \
	2048

cat dh.pem \
	>> cert.pem 
