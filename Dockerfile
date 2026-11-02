# Etapa 1: Construir el proyecto con Maven
FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /app
COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Etapa 2: Tomcat 11
FROM tomcat:11.0-jdk21-temurin

# Limpia las aplicaciones por defecto
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia el .war como ROOT
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]