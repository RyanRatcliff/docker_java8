cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ryanratcliff/word_count_combine

inputs:
  licensecountfile:
    type: File
    inputBinding:
      prefix: -s
      position: 1
  speccountfile:
    type: File
    inputBinding:
      prefix: -l
      position: 2
  pdfaggregatecountfilename:
    type: string
    inputBinding:
      prefix: -o
      position: 3
outputs:
  pdfaggregatecountout:
    type: File
    outputBinding:
      glob: $(inputs.pdfaggregatecountfilename)

