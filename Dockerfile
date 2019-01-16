
#Base image
FROM  maven:3.3-jdk-8
#Copy all the source code in the virtual machine
COPY "." "/usr/src/dummyapi"
#Set the working directory to the newly created directory
WORKDIR /usr/src/dummyapi
#Compile an generate the jar for the application
RUN mvn clean package
#Indicates that this port can be published (To publish it to the external machine in the run command you should send "-p" argument)
EXPOSE 8080
#Default command to be executed when a container is created based on this image
CMD ["java", "-jar", "target/dummy-rest-api-0.0.1-SNAPSHOT.jar"]
