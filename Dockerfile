FROM amazoncorretto:17.0.8-alpine3.18
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=${ACTIVE_PROFILE}", "/app.jar"]
