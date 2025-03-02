# Use an official OpenJDK runtime as a parent image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container and rename it to app.jar
COPY target/fileSharingManagement-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
