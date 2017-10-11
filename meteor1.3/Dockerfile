FROM vazco/meteord:meteor1.3-base
MAINTAINER Michal Wanat

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh
