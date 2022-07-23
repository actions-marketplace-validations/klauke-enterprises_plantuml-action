FROM openjdk:18

RUN apt-get update && \
    apt-get install -y git

WORKDIR /opt/plantuml

ADD https://github.com/plantuml/plantuml/releases/download/v1.2022.6/plantuml-1.2022.6.jar /opt/plantuml/plantuml.jar

