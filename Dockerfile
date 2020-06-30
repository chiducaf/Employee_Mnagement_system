FROM openjdk:8

MAINTAINER ="Atos"

LABEL "customized"="Customization image for GKE with Jenkins X"

#ARG SSL_KEYSTORE_PASSWORD

USER admin
COPY target/EmployeeManagementSystem.war EmployeeManagementSystem.war
EXPOSE 9090

#RUN apk update  
ENTRYPOINT ["java","-jar","EmployeeManagementSystem.war"]
#CMD ["-g"]
