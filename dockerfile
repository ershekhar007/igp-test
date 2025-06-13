# Use official Tomcat 9 base image
FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps directory
COPY C:\ProgramData\Jenkins\.jenkins\workspace\ci-job\target\ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
