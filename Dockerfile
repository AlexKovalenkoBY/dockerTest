FROM openjdk:18

WORKDIR /app

COPY target/java-0.0.1-snapshot.jar /app

EXPOSE 8081

CMD ["java", "-jar", "java-0.0.1-snapshot.jar"]