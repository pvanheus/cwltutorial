cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: pvanheus/reverse:latest

baseCommand: reverse.py

inputs:
  infile:
    type: File
    inputBinding:
      position: 1
  outfile:
    type: string

stdout: $(inputs.outfile)

outputs:
  outfile:
    type: stdout
