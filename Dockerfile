From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./EmployeeManagementSystem.war /usr/local/tomcat/webapps/EmployeeManagementSystem.war
CMD ["catalina.sh","run"]
# adfbi
