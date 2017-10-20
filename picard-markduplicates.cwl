class: CommandLineTool
cwlVersion: v1.0
id: picard_markduplicates
baseCommand:
  - picard
  - MarkDuplicates
inputs:
  - id: input_bam
    type: File?
    inputBinding:
      position: 2
      prefix: INPUT=
      separate: false
  - id: output_bam
    type: string?
    inputBinding:
      position: 3
      prefix: OUTPUT=
      separate: false
outputs:
  - id: output
    type: File?
    outputBinding:
      glob: '*bam'
    secondaryFiles:
      - ^.bai
label: picard-MarkDuplicates
arguments:
  - position: 1
    prefix: ''
    valueFrom: CREATE_INDEX=true
  - position: 4
    prefix: ''
    valueFrom: VALIDATION_STRINGENCY=STRICT
  - position: 5
    prefix: ''
    valueFrom: M=marked_dup_metrics.txt
requirements:
  - class: DockerRequirement
    dockerPull: 'images.sbgenomics.com/bobo823/bcbio:v0.9.7aR'
'sbg:job':
  inputs:
    input_bam:
      basename: input.ext
      class: File
      contents: file contents
      nameext: .ext
      nameroot: input
      path: /path/to/input.ext
      secondaryFiles: []
      size: 0
    output_bam: output_bam-string-value
  runtime:
    cores: 1
    ram: 1000
