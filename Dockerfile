FROM eclipse-temurin:17-jre-jammy

WORKDIR /server

RUN apt-get update && apt-get install -y curl && \
    curl -o server.jar https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/100/downloads/paper-1.20.1-100.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xms1G", "-Xmx1G", "-jar", "server.jar", "nogui"]
