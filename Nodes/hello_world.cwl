class: CommandLineTool
inputs:
  message:
    type: string
    default: Hello World
    inputBinding:
      position: 1
  success:
    type: string
    default: This is a success message
    inputBinding:
      position: 1
outputs: []
cwlVersion: v1.2
baseCommand: echo
