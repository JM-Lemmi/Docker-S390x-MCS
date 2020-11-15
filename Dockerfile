#FROM s390x/openjdk:8
FROM amd64/openjdk:8

COPY ./server /var/games/minecraft/server
#die files müssen die richtige Server Version, EULA=ture, etc enthalten!
WORKDIR /var/games/minecraft/server

EXPOSE 25565

RUN java -Xmx2048M -Xms2048M -jar minecraft_server.jar nogui