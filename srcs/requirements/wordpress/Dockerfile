FROM debian:buster

RUN apt-get update && apt-get install -y php7.3 \
php7.3-fpm php7.3-mysql mariadb-client \
nginx wget curl
    
# RUN wget -c https://wordpress.org/latest.tar.gz && \
# tar -xzvf latest.tar.gz -C /var/www/html/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /script.sh
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/
# COPY ./tools/wp-config.php /var/www/html/wordpress/


RUN chmod +x script.sh

RUN mkdir /run/php/

ENTRYPOINT ["sh", "script.sh"]

CMD ["php-fpm7.3", "-R", "-F"]
