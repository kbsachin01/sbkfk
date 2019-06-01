FROM openjdk:8-jdk-alpine

MAINTAINER Sachin.Kb

WORKDIR /app

ARG JAR_FILE=target/sbkfk-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]