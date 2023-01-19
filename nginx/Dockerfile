
FROM nginx

RUN apt-get -y update && apt-get -y upgrade -y

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]