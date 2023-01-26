FROM tomcat
RUN mkdir app
WORKDIR /app
COPY webapp/target/webapp.war .
COPY /webapp/target/webapp.war /opt/tomcat/webapps
EXPOSE 80
