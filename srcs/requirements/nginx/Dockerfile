
FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt install -y nginx

COPY ./tools/certificate.crt /etc/ssl/

COPY ./tools/private.key /etc/ssl/

COPY ./tools/default.conf /etc/nginx/conf.d/

RUN chmod 777 /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]