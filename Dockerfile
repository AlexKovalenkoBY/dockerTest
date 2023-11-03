# FROM eclipse-temurin:17-jdk-alpine as builder
# WORKDIR /opt/app
# COPY ./ ./

# RUN chmod +x ./mvnw
# RUN ./mvnw dependency:go-offline
# RUN ./mvnw clean install

# FROM eclipse-temurin:17-jre-alpine
# WORKDIR /opt/app
# COPY --from=builder /opt/app/target/*.jar /opt/app/*.jar
# EXPOSE 8081
# ENTRYPOINT ["java", "-jar", "java-0.0.1-snapshot.jar"]


# FROM eclipse-temurin:17-jdk-alpine as builder
# WORKDIR /opt/app
# COPY ./ ./


FROM eclipse-temurin:17-jdk-alpine as builder
WORKDIR /opt/app
COPY ./ ./

RUN chmod +x ./mvnw
RUN ./mvnw dependency:go-offline
RUN ./mvnw clean install

FROM eclipse-temurin:17-jre-alpine
WORKDIR /opt/app
COPY --from=builder /opt/app/target/*.jar /opt/app/*.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "java-0.0.1-SNAPSHOT.jar"]