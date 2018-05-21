cwlVersion: v1.0
class: Workflow

inputs:
  infile:
    type: File
    inputBinding:
      position: 1

outputs:
  revcomp_dnafile:
    type: File
    outputSource: complement/comp_dnafile

steps:
  reverse:
    run: reverse.cwl
    in:
      dnafile: infile
    out: [rev_dnafile]
  complement:
    run: complement.cwl
    in:
      dnafile: reverse/rev_dnafile
    out: [comp_dnafile]
