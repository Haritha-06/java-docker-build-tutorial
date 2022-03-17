# Multi-stage build setup (https://docs.docker.com/develop/develop-images/multistage-build/)

# Stage 1 (to create a "build" image, ~140MB)
FROM openjdk:8-jdk-alpine3.7
COPY target/app.jar app.jar
EXPOSE 8123
ENTRYPOINT ["java", "-jar", "/app.jar"]
