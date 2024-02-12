# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0
FROM debian:bookworm-slim

LABEL version="1.20.4"
LABEL maintainer="chuck@findlayis.me"

ADD https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar /minecraft.jar

RUN \
    apt-get update && \
    apt-get install -y openjdk-17-jre-headless

COPY start.sh /

EXPOSE 25565

CMD /start.sh
