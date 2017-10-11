FROM vazco/meteord:meteor-base
MAINTAINER Michal Wanat

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/lib/build_app.sh
