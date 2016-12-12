#
# Docker file for Spring Boot Admin
#

FROM maven:3.3.9-jdk-8-alpine
MAINTAINER Merapar

ENV TZ UTC

RUN     mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD     . /usr/src/app

CMD     mvn package && java -jar target/spring-boot-admin-1.4.4.jar