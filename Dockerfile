FROM tomcat
RUN mkdir app
WORKDIR /app
COPY webapp/target/webapp.war .
COPY webapp/target/webapp.war /var/www/html
EXPOSE 80
