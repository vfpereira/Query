FROM mariadb:10.3

COPY sql/create.sql /docker-entrypoint-initdb.d/

ENV MYSQL_DATABASE DB1

CMD ["mysqld"]