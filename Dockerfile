# Use a base image with a Java Runtime Environment (JRE)
FROM openjdk:21-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application (JAR file) into the container
# Replace 'your-application.jar' with the actual name of your JAR file
COPY . .

# Expose the port your Java server listens on (e.g., 8080 for Spring Boot)
EXPOSE 8085

# Define the command to run your Java application when the container starts
ENTRYPOINT ["java", "-XX:+UseParallelGC", "-XX:MaxRAMPercentage=60.0" , "-jar","/app/target/graalvmdemo-0.0.1-SNAPSHOT.jar"]