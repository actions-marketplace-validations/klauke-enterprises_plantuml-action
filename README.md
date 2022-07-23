# PlantUML Docker Action

This action leverages the plantuml java tool to create uml diagrams from given input files.

## Inputs

## `files`

**Required** The name of the person to greet. Default `"World"`.

## Example usage

### Compile single diagram

```
uses: klauke-enterprises/plantuml-action@v1
with:
  files: diagram.puml
```

### Compiling multiple diagrams

```
uses: klauke-enterprises/plantuml-action@v1
with:
  files: |
    diagram.puml
    diagram-test.puml
```

### Compiling multiple diagrams with pattern

```
uses: klauke-enterprises/plantuml-action@v1
with:
  files: diagram-**.puml
```
