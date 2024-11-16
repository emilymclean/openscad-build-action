# OpenSCAD build action
This action uses OpenSCAD CLI to generate artifacts in Github Actions

## Inputs

| Input              	| Required 	| Description                                                                                                       	| Default  	|
|--------------------	|----------	|-------------------------------------------------------------------------------------------------------------------	|----------	|
| `input-file`        | ✅         | Path to the input scad file.                                                                                         |           |
| `output-file`       | ✅         | Path to the output file. Also defines the type of output by the extension. See [-o option in OpenSCAD CLI doc](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_OpenSCAD_in_a_command_line_environment). | output.stl |
| `customizer-parameter-file` |   | Path to the customizer file. See [-p option in OpenSCAD CLI doc](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_OpenSCAD_in_a_command_line_environment). ||
| `customizer-parameter-set`  |   | Name of the customizer set defined in `customizer-parameter-file`. See [-P option in OpenSCAD CLI doc](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_OpenSCAD_in_a_command_line_environment). ||

## Example usage
```
uses: emilymclean/openscad-build-action@v1
with:
  input-file: 'model.scad'
  output-file: 'output_with_something.stl'
  customizer-parameter-file: 'model.json'
  customizer-parameter-set: 'with_something'
```