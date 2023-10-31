# Fetching latest version of Java
FROM openjdk:18
 
# Setting up work directory
WORKDIR /app

# Copy the jar file into our app
COPY target/java-0.0.1-snapshot.jar /app

# Exposing port 8080
EXPOSE 8081

# Starting the application
CMD ["java", "-jar", "spring-0.0.1-SNAPSHOT.jar"]