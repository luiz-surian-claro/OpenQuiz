source .env

docker run --rm -it \
--name certbot \
--env AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
--env AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
-v "/etc/letsencrypt:/etc/letsencrypt" \
-v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
certbot/dns-route53 certonly \
--dns-route53 \
-d ${OPENQUIZ_URL} \
--agree-tos
