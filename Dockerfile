# Usar una imagen base de OpenJDK
FROM openjdk:11-jre-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR de la aplicación al contenedor
COPY target/payments-service-example-0.0.1-SNAPSHOT-spring-boot.jar /app/payments-service-example.jar

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "payments-service-example.jar"]
