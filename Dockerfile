FROM openjdk:18-alpine

LABEL org.opencontainers.image.title="PlantUML Action"
LABEL org.opencontainers.image.url="https://github.com/klauke-enterprises/plantuml-action"
LABEL org.opencontainers.image.description="PlantUML Action"
LABEL org.opencontainers.image.documentation="https://github.com/klauke-enterprises/plantuml-action"
LABEL org.opencontainers.image.authors="Felix Klauke <felix@klauke-enterprises.com>"

RUN apk update
RUN apk add git

WORKDIR /opt/plantuml

ADD https://github.com/plantuml/plantuml/releases/download/v1.2022.6/plantuml-1.2022.6.jar /opt/plantuml/plantuml.jar

