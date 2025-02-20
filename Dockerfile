FROM openjdk:8-jre-alpine
EXPOSE 8080

# Copy the correct JAR file
COPY build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/app.jar

WORKDIR /usr/app
ENTRYPOINT ["java", "-jar", "app.jar"]
