#!/bin/sh -l

echo "Compiling plantuml diagrams..."

inputFiles=$INPUT_FILES

env

echo "Imput Files: $inputFiles"

java -jar /opt/plantuml/plantuml.jar -charset UTF-8 $inputFiles

echo "Done."
