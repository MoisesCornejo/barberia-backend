# 🛠️ Stage 1: Build de la aplicación
FROM maven:3.9.6-eclipse-temurin-21 AS builder

WORKDIR /app

# Copiamos los archivos de configuración primero para aprovechar el cache de dependencias
COPY pom.xml .
COPY .mvn .mvn
RUN mvn dependency:go-offline

# Ahora copiamos el código fuente y construimos el .jar
COPY src ./src
RUN mvn clean package -DskipTests

# 🚀 Stage 2: Imagen final ultra ligera
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copiamos el .jar desde el stage anterior
COPY --from=builder /app/target/*.jar app.jar

# Exponemos el puerto en el que correrá la app
EXPOSE 8080

# Comando de arranque
ENTRYPOINT ["java", "-jar", "app.jar"]