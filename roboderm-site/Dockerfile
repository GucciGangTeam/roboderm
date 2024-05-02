FROM tomcat:10.1.19

COPY /target/ROOT.war/ /usr/local/tomcat/webapps/

RUN sed -i 's/port="8080"/port="80"/' /usr/local/tomcat/conf/server.xml

EXPOSE 80:80