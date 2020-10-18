FROM jmcarbo/nginx-php-fpm
COPY . /usr/share/nginx/html/
EXPOSE 80
