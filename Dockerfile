#FROM s390x/openjdk:8
FROM amd64/openjdk:8

WORKDIR /var/games/minecraft/server
#auto-accept EULA
RUN echo "eula=true" > /var/games/minecraft/server/eula.txt
#download the server jar
ADD https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar /var/games/minecraft/server/minecraft_server.jar

EXPOSE 25565

CMD java -Xmx2048M -Xms2048M -jar minecraft_server.jar nogui
