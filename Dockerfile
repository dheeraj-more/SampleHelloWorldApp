FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
# Expose HTTP port
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]