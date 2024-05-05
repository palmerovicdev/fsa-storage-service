# Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

# Add Maintainer Info
LABEL maintainer="palmerodev@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=fsa-storage-service-0.0.1-SNAPSHOT.jar


# Environment Variables
ARG DATABASE_URL
ARG DATABASE_USER
ARG DATABASE_PASS

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]