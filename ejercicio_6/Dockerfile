FROM registry.redhat.io/redhat-openjdk-18/openjdk18-openshift
COPY ./passwordapi.jar ./
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "passwordapi.jar"]

