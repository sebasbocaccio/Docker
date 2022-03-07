FROM fabric8/java-alpine-openjdk8-jdk
COPY ./passwordapi.jar ./
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "passwordapi.jar"]
