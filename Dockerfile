#FROM openjdk:12-jdk
#FROM bitnami/java:12-prod
FROM gcr.io/sys-2b0109it/demo/bitnami/java:14.0.1
ARG JAR_FILE=build/libs/spring-music-1.0.jar
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
