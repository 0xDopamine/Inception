FROM debian:buster

RUN apt-get update && apt-get install -y php7.3 \
php7.3-fpm php7.3-mysql mariadb-client \
nginx wget

RUN wget -c https://wordpress.org/latest.tar.gz && \
tar -xzvf latest.tar.gz -C /var/www/html/

COPY script.sh /script.sh
COPY www.conf /etc/php/7.3/fpm/pool.d/


RUN chmod +x script.sh

CMD ["sh", "script.sh"]
