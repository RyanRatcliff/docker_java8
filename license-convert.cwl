cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: kadock/pdftotext

inputs:
  licensefile:
    type: File
    inputBinding:
      position: 1
  licensetextfilename:
    type: string
    inputBinding:
      position: 2
outputs:
  licenseconvertout:
    type: File
    outputBinding:
      glob: $(inputs.licensetextfilename)
