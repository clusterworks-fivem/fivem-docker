FROM alpine

ARG LICENSE_KEY
ENV LICENSE_KEY ${LICENSE_KEY}

RUN apk add --no-cache ca-certificates curl
RUN mkdir -p /opt/cfx-server
RUN mkdir -p /opt/cfx-server-data
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2588-c601baf1fb132677cd372559ee9dac09a8977b93/fx.tar.xz | tar xJ -C /opt/cfx-server

WORKDIR /opt/cfx-server-data

COPY ./server.cfg /opt/cfx-server-data/
COPY ./resources/* /opt/cfx-server-data/resources/
COPY start.sh /opt/cfx-server/

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/opt/cfx-server/start.sh"]
CMD ["+exec", "/opt/cfx-server-data/server.cfg"]

