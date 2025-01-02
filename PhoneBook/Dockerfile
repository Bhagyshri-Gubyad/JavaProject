FROM maven:3.8.1-openjdk-11-slim as build
WORKDIR /app
COPY pom.xml . 
RUN mvn dependency:resolve
COPY . .
RUN mvn clean install

FROM tomcat:9.0
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh","run" ]

