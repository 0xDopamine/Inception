mysqld

mysql -u root

CREATE USER 'mbaioumy'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'mbaioumy'@'localhost';

FLUSH PRIVILEGES;

EXIT;

CREATE DATABASE test_db

