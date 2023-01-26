
mysqld

mysql -u root -e "CREATE USER 'mbaioumy'@'%' IDENTIFIED BY 'admin';

GRANT ALL PRIVILEGES ON *.* TO 'mbaioumy'@''%';

FLUSH PRIVILEGES;

EXIT;

CREATE DATABASE test_db"

