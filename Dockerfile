# Stage 1: Build the application
# Use Maven with OpenJDK 17 to compile the application
FROM maven:3.8.5-openjdk-17 AS build
# Set the working directory inside the container for the build process
WORKDIR /app
# Copy the Maven project file (pom.xml) to the working directory
COPY pom.xml .
# Copy the source code of the application into the container
COPY src ./src
# Build the application using Maven without running tests
RUN mvn clean package -DskipTests

# Stage 2: Package the application
# Use a lightweight OpenJDK 17 base image to run the application
FROM openjdk:17-jdk-slim
# Set the working directory inside the container
WORKDIR /app
# Copy the built JAR file from the build stage into the runtime stage
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar
# Set the command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
