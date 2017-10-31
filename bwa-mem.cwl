class: CommandLineTool
cwlVersion: v1.0
id: bwa_mem
baseCommand:
  - bwa
  - mem
inputs:
  - id: read_group
    type: string?
    inputBinding:
      position: 3
      prefix: '-R'
      shellQuote: false
  - id: reference
    type: File?
    inputBinding:
      position: 4
    secondaryFiles:
      - .fai
      - .sa
      - .pac
      - .bwt
      - .ann
      - .amb
      - ^.dict
  - id: input1
    type: File?
    inputBinding:
      position: 5
  - id: output
    type: string?
    inputBinding:
      position: 8
  - id: input2
    type: File?
    inputBinding:
      position: 6
outputs:
  - id: output_1
    type: File?
    outputBinding:
      glob: '*bam'
    secondaryFiles:
      - .bai
label: bwa-mem
arguments:
  - position: 1
    prefix: '-t'
    valueFrom: '8'
  - position: 2
    prefix: '-T'
    valueFrom: '0'
  - position: 9
    prefix: ''
  - position: 7
    prefix: ''
    valueFrom: '| samtools view -Shb -o'
requirements:
  - class: ShellCommandRequirement
  - class: DockerRequirement
    dockerPull: 'images.sbgenomics.com/bobo823/gdc-tools:v1.00'
'sbg:job':
  inputs:
    read_group: read_group-string-value
    reference:
      basename: input.ext
      class: File
      contents: file contents
      nameext: .ext
      nameroot: input
      path: /path/to/input.ext
      secondaryFiles: []
      size: 0
    input1:
      basename: input1.ext
      class: File
      contents: file contents
      nameext: .ext
      nameroot: input1
      path: /path/to/input1.ext
      secondaryFiles: []
      size: 0
    output: output-string-value
    input2:
      basename: input.ext
      class: File
      contents: file contents
      nameext: .ext
      nameroot: input
      path: /path/to/input.ext
      secondaryFiles: []
      size: 0
  runtime:
    cores: 1
    ram: 1000
