FROM meteorhacks/meteord:base
MAINTAINER Michal Wanat

ENV METEORD_DIR /opt/meteord

COPY scripts $METEORD_DIR
RUN bash $METEORD_DIR/init.sh

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh
