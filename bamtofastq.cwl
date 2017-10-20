class: CommandLineTool
cwlVersion: v1.0
id: bamtofastq
baseCommand:
  - bamtofastq
inputs:
  - id: input_bam
    type: File?
    inputBinding:
      position: 3
      prefix: filename=
      separate: false
outputs:
  - id: output
    type: 'File[]?'
    outputBinding:
      glob: '*gz'
label: bamtofastq
arguments:
  - position: 1
    prefix: collate=
    separate: false
    valueFrom: '1'
  - position: 2
    prefix: exclude=
    separate: false
    valueFrom: 'QCFAIL,SECONDARY,SUPPLEMENTARY'
  - position: 4
    prefix: gz=
    separate: false
    valueFrom: '1'
  - position: 5
    prefix: inputformat=
    separate: false
    valueFrom: bam
  - position: 6
    prefix: level=
    separate: false
    valueFrom: '5'
  - position: 7
    prefix: outputdir=
    separate: false
    valueFrom: ./
  - position: 8
    prefix: outputperreadgroup=
    separate: false
    valueFrom: '1'
  - position: 9
    prefix: outputperreadgroupsuffixF=
    separate: false
    valueFrom: _1.fq.gz
  - position: 10
    prefix: outputperreadgroupsuffixF2=
    separate: false
    valueFrom: _2.fq.gz
  - position: 11
    prefix: outputperreadgroupsuffixO=
    separate: false
    valueFrom: _o1.fq.gz
  - position: 12
    prefix: outputperreadgroupsuffixO2=
    separate: false
    valueFrom: _o2.fq.gz
  - position: 13
    prefix: outputperreadgroupsuffixS=
    separate: false
    valueFrom: _s.fq.gz
  - position: 14
    prefix: tryoq=
    separate: false
    valueFrom: '1'
requirements:
  - class: DockerRequirement
    dockerPull: images.sbgenomics.com/bobo823/biobambam2
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
  runtime:
    cores: 1
    ram: 1000
