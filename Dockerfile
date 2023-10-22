#inicia con la imagen base que contiene Java runtime
# la imagen con el tag '17-jdk-slim' SI existe en docker hub
FROM openjdk:17-jdk-slim as build

#EXPOSE 8088

# se agrega el jar del microservicio al contenedor
COPY target/rooms-0.0.1-SNAPSHOT.jar rooms-0.0.1-SNAPSHOT.jar

#se ejecuta el microservicio
ENTRYPOINT [ "java","-jar","/rooms-0.0.1-SNAPSHOT.jar"]
