# Dockerfile
FROM openjdk:18

WORKDIR /app

COPY ./target/java-0.0.1-SNAPSHOT.jar /app/

EXPOSE 8081

CMD ["java", "-jar", "java-0.0.1-snapshot.jar"]

# FROM eclipse-temurin:17-jdk-alpine as builder
# WORKDIR /opt/app
# COPY .mvn/ .mvn
# COPY mvnw pom.xml ./
# RUN ./mvnw dependency:go-offline
# COPY ./src ./src
# RUN ./mvnw clean install

# FROM eclipse-temurin:17-jre-alpine
# WORKDIR /opt/app
# COPY --from=builder /opt/app/target/*.jar /opt/app/*.jar
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "/opt/app/*.jar"]
