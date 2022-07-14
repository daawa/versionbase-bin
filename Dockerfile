FROM alpine:3


RUN mkdir -p /versionbase

WORKDIR /versionbase

EXPOSE 8080

ADD ./assets ./assets
ADD ./static ./static
ADD ./mongo.cfg ./
ADD ./vb.server.linux ./
ADD ./service.sh ./

RUN chmod +x /versionbase/vb.server.linux
RUN chmod +x /versionbase/service.sh


CMD ["sh", "service.sh"]
