# Use the official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY target/my-springboot-app.jar /app/app.jar

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]
