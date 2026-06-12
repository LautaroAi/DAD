#!/bin/bash

# Lanzo el contenedor
docker run -d --name mariadb -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=password \
    -e MYSQL_DATABASE=docker_sample \
    -v "../mariadb/data:/var/lib/mysql" \
   mariadb:10.5


# Lo lanzo por si estaba parado
docker start mariadb

# Si queremos un cliente por consola
#docker run -it --link mariadb --rm mariadb sh -c 'exec mysql 
#    -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" 
#   -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'