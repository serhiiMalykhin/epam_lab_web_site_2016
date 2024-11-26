FROM tomcat:9.0.97

# Copy your WebShop.war file into the webapps directory of Tomcat
COPY target/WebShop.war /usr/local/tomcat/webapps/WebShop.war

# Optionally copy a custom server.xml configuration (uncomment if needed)
# COPY config/server.xml /usr/local/tomcat/conf/server.xml

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]