FROM openjdk:11-jre-slim
#VOLUME /tmp
COPY build/libs/*.jar D-1.jar
ENTRYPOINT ["java","-jar","/D-1.jar"]