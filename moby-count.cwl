cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: ryanratcliff/word_count

inputs:
  mobyfile:
    type: File
    inputBinding:
      prefix: -i
      position: 1
  mobycountfilename:
    type: string
    inputBinding:
      prefix: -o
      position: 2
outputs:
  mobycountout:
    type: File
    outputBinding:
      glob: $(inputs.mobycountfilename)
