FROM composer:latest

COPY composer.json .

WORKDIR /docker_kiloupabocou

RUN composer install

FROM php:7.4-cli

COPY . /docker_kiloupabocou

WORKDIR /docker_kiloupabocou