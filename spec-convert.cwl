cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: kadock/pdftotext

inputs:
  specfile:
    type: File
    inputBinding:
      position: 1
  spectextfilename:
    type: string
    inputBinding:
      position: 2
outputs:
  specconvertout:
    type: File
    outputBinding:
      glob: $(inputs.spectextfilename)
