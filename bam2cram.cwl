class: CommandLineTool
cwlVersion: v1.0
id: bam3cram
baseCommand:
  - java
  - '-jar'
  - /cramtools-3.0/cramtools-3.0-b202.jar
  - cram
inputs:
  - id: input_bam
    type: File?
    inputBinding:
      position: 1
      prefix: '--input-bam-file'
    secondaryFiles:
      - ^.bai
  - id: reference
    type: File?
    inputBinding:
      position: 2
      prefix: '--reference-fasta-file'
    secondaryFiles:
      - .fai
  - id: output_cram
    type: string?
    inputBinding:
      position: 3
      prefix: '--output-cram-file'
outputs:
  - id: output
    type: File?
    outputBinding:
      glob: '*cram'
label: bam2cram
requirements:
  - class: DockerRequirement
    dockerPull: 'images.sbgenomics.com/bobo823/cramtools:v3.0.b202'
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
    reference:
      basename: input.ext
      class: File
      contents: file contents
      nameext: .ext
      nameroot: input
      path: /path/to/input.ext
      secondaryFiles: []
      size: 0
    output_cram: output_cram-string-value
  runtime:
    cores: 1
    ram: 1000
