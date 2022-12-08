# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "Nabajyoti Modak" 
COPY ./webapp.war /usr/local/tomcat/webapps
