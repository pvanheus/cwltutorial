cwlVersion: v1.0
class: CommandLineTool

hints:
  SoftwareRequirement:
    packages:
      - package: jedi
        version:
        - '1.0.0'
  DockerRequirement:
    dockerPull: pvanheus/reverse:latest

baseCommand: reverse.py

inputs:
  dnafile:
    type: File
    inputBinding:
      position: 1

# the name of the file that stdout is redirected to
stdout: $(inputs.dnafile.nameroot)_reversed$(inputs.dnafile.nameext)

outputs:
  rev_dnafile:
    type: stdout
