#!/bin/sh -l

echo "Compiling plantuml diagrams..."

inputFiles=$INPUT_files

java -jar /opt/plantuml/plantuml.jar -charset UTF-8 $inputFiles

echo "::set-output name=time::$time"
