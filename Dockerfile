# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0
FROM alpine:3

LABEL version="1.19.2"
LABEL maintainer="chuck@findlayis.me"

ADD https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar /minecraft.jar

RUN \
    apk add openjdk17

COPY start.sh /

EXPOSE 25565

CMD /start.sh
