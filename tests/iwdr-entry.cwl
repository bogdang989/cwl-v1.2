#!/usr/bin/env cwl-runner

class: CommandLineTool
cwlVersion: v1.2.0-dev2
baseCommand: ["cat", "example.conf"]

requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: example.conf
        entry: |
          CONFIGVAR=$(inputs.message)

inputs:
  message: string
outputs:
  out:
    type: File
    outputBinding:
      glob: example.conf
