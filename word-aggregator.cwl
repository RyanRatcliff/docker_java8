cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ryanratcliff/word_count_combine

inputs:
  mobycountfile:
    type: File
    inputBinding:
      prefix: -s
      position: 1
  illiadcountfile:
    type: File
    inputBinding:
      prefix: -l
      position: 2
  aggregatecountfilename:
    type: string
    inputBinding:
      prefix: -o
      position: 3
outputs:
  aggregatecountout:
    type: File
    outputBinding:
      glob: $(inputs.aggregatecountfilename)

