FROM openjdk:17-jdk-slim

WORKDIR /server

COPY server.jar /server/server.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xms1G", "-Xmx1G", "-jar", "server.jar", "nogui"]
