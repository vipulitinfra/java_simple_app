FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/java_simple_app-1.0.0.jar app.jar
CMD ["java", "-jar", "app.jar"]
EXPOSE 9090
