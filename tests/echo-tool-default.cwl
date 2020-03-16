#!/usr/bin/env cwl-runner

class: CommandLineTool
cwlVersion: v1.2.0-dev2
inputs:
  in:
    type: string
    default: tool_default
    inputBinding:
      position: 1
outputs:
  out:
    type: string
    outputBinding:
      glob: out.txt
      loadContents: true
      outputEval: $(self[0].contents)
baseCommand: [echo, -n]
stdout: out.txt
