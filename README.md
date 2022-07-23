# PlantUML Docker Action

This action leverages the plantuml java tool to create uml diagrams from given input files.

## Inputs

## `files`

**Required** The pattern of the files to be processed.

## Example usage

**With single file**

```yaml
- name: Generate PlantUML Diagrams
  uses: klauke-enterprises/plantuml-action@v1.0.0
  with:
    files: my-custom-folder/diagram.puml
```

**Wildcard Supoort**

You can use the full wildcard syntax to match multiple files as stated in the plantuml [docs](https://plantuml.com/en/command-line).

```yaml
- name: Generate PlantUML Diagrams
  uses: klauke-enterprises/plantuml-action@v1.0.0
  with:
    files: my-custom-folders-*/diagram-**.puml
```
