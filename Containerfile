FROM php:7.4-apache
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html

#Clone Mikhmon dari github
RUN git clone https://github.com/laksa19/mikhmonv3.git .

#Atur hak akses direktori
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
