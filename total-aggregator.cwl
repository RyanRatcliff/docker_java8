cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ryanratcliff/word_count_combine

inputs:
  wordcountfile:
    type: File
    inputBinding:
      prefix: -s
      position: 1
  pdfcountfile:
    type: File
    inputBinding:
      prefix: -l
      position: 2
  totalcountfilename:
    type: string
    inputBinding:
      prefix: -o
      position: 3
outputs:
  totalcountout:
    type: File
    outputBinding:
      glob: $(inputs.totalcountfilename)

