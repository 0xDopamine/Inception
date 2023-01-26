FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY script.sh ./script.sh

RUN service mysql start

CMD ["sh", "script.sh"]
