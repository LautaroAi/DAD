#!/bin/bash

# Creo la imagen
docker build -t joseluisgs/php-fpm .

# Lanzo el contenedor
docker run -itd --name php7 \
    --link mariadb \
    -v "../config/php":/usr/local/etc/php \
    -v "../code/myapp":/var/www/html/myapp \
    joseluisgs/php-fpm

# Lo lanzo por si estaba parado
docker start php7