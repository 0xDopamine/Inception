service mysql start 
mariadb -u root -e "CREATE DATABASE test_db ; CREATE USER 'mbaioumy'@'%' IDENTIFIED BY 'admin' ; GRANT ALL PRIVILEGES ON test_db.* TO 'mbaioumy'@'%'; FLUSH PRIVILEGES;"
service mysql stop 
mysqld_safe