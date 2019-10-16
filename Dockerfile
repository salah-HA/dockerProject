FROM PHP:7.2-apache

RUN docker-php-ext-install pdo_mysql
RUN apt-get update && apt-get install -q -y ssmtp mailutils && rm -rf /var/lib/apt/lists 
