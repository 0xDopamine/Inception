FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY script.sh /opt/src/scripts/script.sh

RUN service mysql start

CMD ["sh" , "/opt/src/scripts/script.sh"]
