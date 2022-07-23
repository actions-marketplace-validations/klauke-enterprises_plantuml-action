# PlantUML Docker Action

This action leverages the plantuml java tool to create uml diagrams from given input files.

## Inputs

## `files`

**Required** The pattern of the files to be processed.

## Example usage

**With single file**

```yaml
- name: Generate PlantUML Diagrams
  uses: klauke-enterprises/plantuml-action@v1
  with:
    files: my-custom-folder/diagram.puml
```

**Wildcard Supoort**

You can use the full wildcard syntax to match multiple files as stated in the plantuml [docs](https://plantuml.com/en/command-line).

```yaml
- name: Generate PlantUML Diagrams
  uses: klauke-enterprises/plantuml-action@v1
  with:
    files: my-custom-folders-*/diagram-**.puml
```

### Full Example

```yaml
name: PlantUML

on:
  workflow_dispatch:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Generate PlantUML Diagrams
        uses: klauke-enterprises/plantuml-action@v1
        with:
          files: test.puml
      - name: Upload a Build Artifact
        uses: actions/upload-artifact@v3.1.0
        with:
          name: Diagrams
          path: "*.png"
```

## Uploading Diagrams

It would be wise to store the created diagrams somewhere. The easiest way to do this is to use the `actions/upload-artifact` action.

```yaml
      - name: Upload a Build Artifact
        uses: actions/upload-artifact@v3.1.0
        with:
          name: diagrams
          path: "*.png"
```
