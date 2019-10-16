# DockerProject
# concernant ce projet qui d'un côtés théorique à l'air théroriquement simple
# Le but etant de crée un environnement dans lequel on y retrouve les services suivants
# - php-apache7.2
# - mariadb
# - mailhog

# Dockerfile :
#FROM PHP:7.2-apache

#RUN docker-php-ext-install pdo_mysql
#RUN apt-get update && apt-get install -q -y ssmtp mailutils && rm -rf /var/lib/apt/lists 

# docker-compose.yml
# version: "3.7"
# services:
# 	web:
# 		image: php:7.2-apache
# 		#container_name: php_web
# 		depends_on:
# 		  - db
# 		volumes:
# 		  - ./php/:/var/www/html/
# 		ports:
# 		  - "8100:80"
# 		#stdin_open: true
# 		#tty: true
# 	mariadb:
# 		image: mariadb
# 		environment:
# 		  - MYSQL_ROOT_PASSWORD=root
# 		 # - MYSQL_DATABASE=db
# 		 # - MYSQL_USER=root
# 		 # - MYSQL_PASSWORD=root
# 		#logging:
# 		 # driver: syslog
# 		#options:
# 		  #tag: "{{.DaemonName}}(image={{.ImageName}};name={{.Name}};id={{.ID}})"
# 		#networks:
# 		 # - backend
# 		#restart: on-failure
# 		volumes:
# 		  - . /mariadb:/var/lib/mysql
# 		#ports:
# 		 # - 3306
	
# 	pma:
# 		image: phpmyadmin/phpmyadmin
# 		environment:
# 		  - PMA_HOST=mariadb
# 		ports:
# 		  - 8080:80
# 		depends_on:
# 		  - mariadb
# 	mailhog:
# 		image: mailhog/mailhog
# 		ports:
# 		  - 1025:1025 # smtp server
# 		  - 8025:8025 # web ui
# 		depends_on:
# 		  - mariadb
# volumes:
# 	db:{}
# 	php:{}

# commande à lancer
# build-compose up -d --build