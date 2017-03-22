cwlVersion: v1.0
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: pvanheus/complement:latest

baseCommand: complement.py

inputs:
  infile:
    type: File
    inputBinding:
      position: 1
  outfile:
    type: string
    default: 'output.txt'

stdout: $(inputs.outfile)

outputs:
  outfile:
    type: stdout
