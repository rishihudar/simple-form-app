# Use a base image that includes git
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Install Git (if not already included in the base image)
RUN apt-get update && apt-get install -y git

# Clone the GitHub repository
RUN git clone https://github.com/your-username/your-repo.git .

# Install Maven to build the project (if not already installed)
RUN apt-get install -y maven

# Build the JAR file using Maven
RUN mvn clean package

# Copy the built JAR file into the Docker image
COPY target/simple-form-app.jar simple-form-app.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "simple-form-app.jar"]
