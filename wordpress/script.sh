
chown -R www-data:www-data /var/www/html/wordpress
mkdir -p /run/php
touch /run/php/php7.3-fpm.sock
chown -R www-data:www-data /run/php/ 
# chmod 755 /run/php/
chmod 660 /run/php/php7.3-fpm.sock

wp core download --allow-root
wp core config --dbname=test_db --dbuser=mbaioumy --dbpass=admin --dbhost=mariadb --allow-root

chmod 600 wp-config.php
chown www-data:www-data wp-config.php

# service php7.3-fpm start




exec $@
# cp /var/www/html/wordpress/wp-config.php ./wordpress/wp-config-sample.php
