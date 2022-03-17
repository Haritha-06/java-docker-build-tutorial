FROM openjdk:8-jdk-alpine3.7
COPY target/app.jar app.jar
EXPOSE 8123
ENTRYPOINT ["java", "-jar", "/app.jar"]
