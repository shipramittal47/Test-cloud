# Use the official lightweight JDK image
FROM openjdk:17-slim

# Set the working directory
WORKDIR /app

# Add the application's JAR file to the container
COPY build/libs/banking-0.0.1-SNAPSHOT.jar /app/banking-service.jar

# Run the JAR file 
ENTRYPOINT ["java", "-jar", "/app/banking-service.jar"]
