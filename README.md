# Getting Started

## Reference Documentation

For further reference, please consider the following sections:

- [Official Apache Maven Documentation](https://maven.apache.org/guides/index.html)
- [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/3.4.1/maven-plugin)
- [Create an OCI Image](https://docs.spring.io/spring-boot/3.4.1/maven-plugin/build-image.html)

---

## Build and Run the Application

### Using Maven

1. **Build the Application:**
   ```bash
   mvn clean package

2. **Run the Application:**

`java -jar target/demo-0.0.1-SNAPSHOT.jar`

3. **Access the Application: Open your browser and navigate to:**

   http://localhost:8081

---

## Docker Container Overview

### Build and Run with Docker Compose

1. **Build the Docker Image:**

`docker-compose up --build`

2. **Stop and Remove the Containers:**

`docker-compose down`

---

## Manual Docker Commands

### If you prefer running Docker commands manually:

1. **Build the Docker Image:**

   ` docker build -t demo-image:latest .`


2. **Run the Docker Container:**

   `docker run -p 8081:8081 --name demo demo-image:latest`


3. **Stop and Remove the Container:**

   `docker stop demo`

   `docker rm demo`

---

### Notes

* Ensure you have Java 17+, Maven, and Docker installed on your system.
* If port 8081 is already in use, update the docker-compose.yml or Dockerfile to use a different port.
