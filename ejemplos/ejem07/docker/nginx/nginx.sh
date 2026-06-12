#!/bin/bash

# Creo el contenedor
docker run -itd --name nginx \
    -v "../config/nginx":/etc/nginx/conf.d \
    -v "../code/myapp":/var/www/html/myapp \
    -v "../logs":/var/log/nginx \
    -p 8080:80 \
    --link php7 nginx

# Lo lanzo por si estaba parado
docker start nginx
