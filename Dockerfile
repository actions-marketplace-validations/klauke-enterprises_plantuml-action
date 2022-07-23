FROM openjdk:18-alpine

LABEL org.opencontainers.image.title="PlantUML Action"
LABEL org.opencontainers.image.url="https://github.com/klauke-enterprises/plantuml-action"
LABEL org.opencontainers.image.description="PlantUML Action"
LABEL org.opencontainers.image.vendor="Klauke Enterprises"
LABEL org.opencontainers.image.licence="MIT"
LABEL org.opencontainers.image.version="1.2022.6"
LABEL org.opencontainers.image.documentation="https://github.com/klauke-enterprises/plantuml-action"
LABEL org.opencontainers.image.authors="Felix Klauke <felix@klauke-enterprises.com>"

RUN apk upgrade --update && apk add \
    freetype-dev \
    libpng-dev \
    fontconfig-dev \
    ttf-dejavu \
    git

WORKDIR /opt/plantuml

ADD https://github.com/plantuml/plantuml/releases/download/v1.2022.6/plantuml-1.2022.6.jar /opt/plantuml/plantuml.jar

