#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.2.0-dev2

inputs:
  special_file: File?
outputs:
  cores:
    type: File
    outputSource: report/output

steps:
  count:
    in:
      special_file:
        source: special_file
        default:
          class: File
          location: special_file
    out: [output]
    run: dynresreq.cwl

  report:
    in:
      file1: count/output
    out: [output]
    run: cat-tool.cwl
