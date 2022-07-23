#!/bin/sh -l

echo "Compiling plantuml diagrams..."

inputFiels=$INPUT_files

java -jar plantuml.jar -charset UTF-8 $inputFiles

echo "::set-output name=time::$time"
