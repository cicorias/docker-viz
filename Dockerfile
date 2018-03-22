FROM nate/dockviz as dockviz
FROM alpine:latest
#FROM alpine:3.4
LABEL author="github@cicoria.com"

RUN apk add --update \
  alpine-sdk \
  bash \
  vim \
  python \
  net-tools \
  nodejs \
  nodejs-npm \
  lsof

COPY --from=dockviz /dockviz /usr/local/bin/

RUN apk add --update --no-cache \
           graphviz \
           ttf-freefont


ENV IN_DOCKER true
ENTRYPOINT ["/bin/bash"]

