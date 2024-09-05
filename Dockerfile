# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0
FROM debian:12.7-slim

LABEL version="1.20.6"
LABEL maintainer="chuck@findlayis.me"

ADD https://piston-data.mojang.com/v1/objects/145ff0858209bcfc164859ba735d4199aafa1eea/server.jar /minecraft.jar

RUN \
    apt-get update && \
    apt-get install -y openjdk-17-jre-headless

COPY start.sh /

EXPOSE 25565

CMD /start.sh
