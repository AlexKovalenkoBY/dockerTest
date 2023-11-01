# FROM openjdk:18

# WORKDIR /app

# COPY ./target/java-0.0.1-snapshot.jar /app

# EXPOSE 8081

# CMD ["java", "-jar", "java-0.0.1-snapshot.jar"]
FROM openjdk:17.0.2-jdk-slim-buster as builder
WORKDIR /opt/app
COPY .mvn/ .mvn
COPY mvn pom.xml ./
RUN ./mvnw dependency:go-offline
COPY ./src ./src
RUN ./mvn clean install package -DskipTests=true 

FROM openjdk:17.0.2-jdk-slim-buster
ARG JAR_FILE=target/java-0.0.1-snapshot.jar
WORKDIR /opt/apt
# COPY ${JAR_FILE} app.jar
COPY --from=builder /opt/app/target/*.jar /opt/app/*.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar"]