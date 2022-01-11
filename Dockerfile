FROM composer:latest

WORKDIR /docker_kiloupabocou

COPY composer.json .

RUN composer install

FROM php:7.4-cli

RUN apt-get update 

RUN apt-get upgrade -y 

RUN docker-php-ext-install mysqli

RUN apt-get install nginx -y

COPY . /docker_kiloupabocou

WORKDIR /docker_kiloupabocou

EXPOSE 80

CMD ["echo", "Docker CMD test! 🐳"]