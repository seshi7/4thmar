FROM tomcat:latest
COPY ./index.html /usr/local/tomcat/webapps/app/
RUN cp -r $CATALINA_HOME/webapps.dist/* $CATALINA_HOME/webapps/
EXPOSE 8090
CMD ["catalina.sh", "run"]
