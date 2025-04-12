#use unoffical OpenJDK runtime as a base image
FROM openjdk:17

WORKDIR /app

#Copy built JAR file into the container
COPY target/springdemo.jar springdemo.jar

#Expose apllication port
EXPOSE 8082

#Command to run application
ENTRYPOINT ["java", "-jar", "/springdemo.jar"]
