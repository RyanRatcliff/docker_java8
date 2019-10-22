cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ryanratcliff/word_count

inputs:
  licensetextfile:
    type: File
    inputBinding:
      prefix: -i
      position: 1
  licensecountfilename:
    type: string
    inputBinding:
      prefix: -o
      position: 2
outputs:
  licensecountout:
    type: File
    outputBinding:
      glob: $(inputs.licensecountfilename)
