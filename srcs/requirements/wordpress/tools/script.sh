chown -R www-data:www-data /var/www/html/wordpress

mkdir -p /run/php
touch /run/php/php7.3-fpm.sock
chown -R www-data:www-data /run/php/
chmod 660 /run/php/php7.3-fpm.sock

cd /var/www/html/wordpress
wp core download --allow-root
wp core config --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb --allow-root

chmod 600 wp-config.php
chown www-data:www-data wp-config.php

wp core install --url=https://localhost --title=DopamInception --admin_user=dopamine --admin_password=admin --admin_email=aminebumi1@gmail.com --allow-root

exec $@