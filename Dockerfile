# Usar una imagen base oficial de OpenJDK 17
FROM amazoncorretto:17-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR al contenedor
COPY target/api-gateway-0.0.1-SNAPSHOT.jar /app/app.jar
# Configurar el puerto en el que la aplicación se ejecutará
ENV SPRING_CONFIG_PORT=8080

# Exponer el puerto en el contenedor
EXPOSE $SPRING_CONFIG_PORT

# Establecer el comando para ejecutar la aplicación
CMD ["java", "-Dserver.port=${SPRING_CONFIG_PORT}", "-jar", "/app/app.jar"]