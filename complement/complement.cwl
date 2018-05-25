cwlVersion: v1.0
class: CommandLineTool

hints:
  SoftwareRequirement:
    packages:
      - package: jedi
        version:
        - '1.0.0'
  DockerRequirement:
    dockerPull: pvanheus/complement:latest

baseCommand: complement.py

inputs:
  dnafile:
    type: File
    inputBinding:
      position: 1

stdout: $(inputs.dnafile.nameroot)_complement$(inputs.dnafile.nameext)

outputs:
  comp_dnafile:
    type: stdout
