
chown -R www-data:www-data /var/www/html/wordpress
# cp /var/www/html/wordpress/wp-config.php ./wordpress/wp-config-sample.php

service php7.3-fpm restart
service nginx restart



