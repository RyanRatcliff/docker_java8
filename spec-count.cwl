cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ryanratcliff/word_count

inputs:
  spectextfile:
    type: File
    inputBinding:
      prefix: -i
      position: 1
  speccountfilename:
    type: string
    inputBinding:
      prefix: -o
      position: 2
outputs:
  speccountout:
    type: File
    outputBinding:
      glob: $(inputs.speccountfilename)
