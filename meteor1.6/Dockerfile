FROM abernix/meteord:node-8.4.0-base
MAINTAINER Jesse Rosenberger

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-8.4.0}
ONBUILD ENV NODE_VERSION ${NODE_VERSION:-8.4.0}

COPY scripts $METEORD_DIR
RUN bash $METEORD_DIR/init.sh

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/lib/install_meteor.sh
ONBUILD RUN bash $METEORD_DIR/lib/build_app.sh
