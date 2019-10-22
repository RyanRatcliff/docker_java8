cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ryanratcliff/word_count

inputs:
  illiadfile:
    type: File
    inputBinding:
      prefix: -i
      position: 1
  illiadcountfilename:
    type: string
    inputBinding:
      prefix: -o
      position: 2
outputs:
  illiadcountout:
    type: File
    outputBinding:
      glob: $(inputs.illiadcountfilename)
