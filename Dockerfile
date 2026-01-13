# Use Amazon's maintained build of OpenJDK 17
FROM amazoncorretto:17-al2023-headless

# Set the working directory
WORKDIR /app

# Add the application's JAR file to the container
COPY target/banking-app-0.0.1-SNAPSHOT.jar /app/banking-service.jar

# Run the JAR file 
ENTRYPOINT ["java", "-jar", "/app/banking-service.jar"]
