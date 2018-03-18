FROM alpine:latest

RUN apk add --no-cache python3 \
  && pip3 install mkdocs-material

VOLUME "/out"
WORKDIR "/out"
ENTRYPOINT [ "mkdocs", "build" ]
