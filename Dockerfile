# Use OpenJDK as the base image
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the application JAR
COPY target/simple-form-app.jar simple-form-app.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "simple-form-app.jar"]
