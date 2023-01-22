
FROM nginx

RUN apt-get -y update && apt-get -y upgrade -y

RUN chmod 777 /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf

COPY certificate.crt /etc/ssl/

COPY private.key /etc/ssl/

COPY index.html /var/www/html/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"] 