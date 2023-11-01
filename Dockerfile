# FROM openjdk:18

# WORKDIR /app

# COPY ./target/java-0.0.1-snapshot.jar /app

# EXPOSE 8081

# CMD ["java", "-jar", "java-0.0.1-snapshot.jar"]
FROM openjdk:17.0.2-jdk-slim-buster
ARG JAR_FILE=target/java-0.0.1-snapshot.jar
RUN echo "$PWD"
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]