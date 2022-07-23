# PlantUML Docker Action

This action leverages the plantuml java tool to create uml diagrams from given input files.

## Inputs

## `files`

**Required** The name of the person to greet. Default `"World"`.

## Example usage

**With single file**

```yaml
uses: klauke-enterprises/plantuml-action@v1
with:
  files: diagram.puml
```

**Wildcard Supoort**

You can use the full wildcard syntax to match multiple files as stated in the plantuml [docs](https://plantuml.com/en/command-line).

```yaml
uses: klauke-enterprises/plantuml-action@v1
with:
  files: my-custom-folder/diagram-**.puml
```
