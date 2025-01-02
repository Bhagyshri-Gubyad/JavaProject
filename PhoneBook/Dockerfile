# Use the official Tomcat image from Docker Hub
FROM tomcat:9-jdk11-openjdk-slim

# Copy the PhoneBook.war file into the webapps directory of Tomcat
COPY PhoneBook.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
