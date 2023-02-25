
FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt install -y nginx


# COPY nginx.conf /etc/nginx/nginx.conf

COPY certificate.crt /etc/ssl/

COPY private.key /etc/ssl/

COPY default.conf /etc/nginx/conf.d/

RUN chmod 777 /etc/nginx/conf.d/default.conf
# COPY index.html /var/www/html/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]