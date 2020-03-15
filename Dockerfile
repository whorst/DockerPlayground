FROM openjdk:11-jre-slim
WORKDIR /app
EXPOSE 10222
COPY build/libs/*.jar D-1.jar
#RUN .\gradlew clean build
ENTRYPOINT ["java","-jar","/D-1.jar"]