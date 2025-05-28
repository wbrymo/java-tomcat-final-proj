# Stage 1: Build with Maven
FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY . /app
RUN mvn clean package -DskipTests

# Stage 2: Deploy to Tomcat
FROM tomcat:9.0
COPY --from=build /app/target/WebAppCal-1.3.5.war /usr/local/tomcat/webapps/WebAppCal.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

