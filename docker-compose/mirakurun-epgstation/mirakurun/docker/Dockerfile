ARG ARCH=
FROM ${ARCH}node:14.15.4-buster AS build
WORKDIR /app
ENV DOCKER=YES
ADD . .
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends build-essential && \
    npm install && \
    npm run build && \
    npm install -g --unsafe-perm --production

FROM ${ARCH}node:14.15.4-buster-slim

WORKDIR /app
ENV DEV="build-essential libtool autoconf git automake cmake"
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    make gcc g++ pkg-config pcscd libpcsclite-dev libccid pcsc-tools && \
    apt-get install -y $DEV && \
\
# recpt1
\
    git clone https://github.com/stz2012/recpt1 /tmp/recpt1 && \
    cd /tmp/recpt1/recpt1 && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    rm -rf /tmp/recpt1 && \
\
# mirakurun
\
    apt-get -y remove $DEV && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY --from=build /usr/local/lib/node_modules/mirakurun /app
CMD ["./docker/container-init.sh"]
EXPOSE 40772 9229
