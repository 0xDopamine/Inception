
chown -R www-data:www-data /var/www/html/wordpress
# mkdir /run/php/
# touch /run/php/php7.3-fpm.sock
# chown www-data:www-data /run/php/ -R
# chmod 755 /run/php/
# chmod 644 /run/php/php7.3-fpm.sock
service php7.3-fpm start
tail -f /dev/null
# cp /var/www/html/wordpress/wp-config.php ./wordpress/wp-config-sample.php




