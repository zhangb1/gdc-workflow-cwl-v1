# gdc-workflow-cwl-v1

## Docker

[Docker](https://www.docker.com/) need to be installed before running the tools.


## Rabix

These cwl tools are created by [Rabix Composer (1.0.0-rc.1)](https://github.com/rabix/composer) and by using the [rabix-1.0.0-rc2](https://github.com/rabix/bunny/releases/download/v1.0.0-rc2/rabix-1.0.0-rc2.tar.gz) can run locally.

```
usage: rabix *.cwl input.json

```
**Example for workflow-input : fastq2cram-workflow-input.json**

```
{
    "reference" : {
      "location" : "/Users/zhangb1/Documents/Tools/CWL.V1/exampleFASTA.fasta",
      "class" : "File"
    },
   "read_group": "'@RG\\tID:test\\tSM:cwl-test'",
   "output_bam": "test.sort.rd.bam",
   "output_cram": "test.sort.rd.cram",
    "input1" :  {
      "location" : "/Users/zhangb1/Documents/cavatica/GRCh37/test3_normal_1.fq.gz",
      "class" : "File"
    }, 
    "input2" : {
      "location" : "/Users/zhangb1/Documents/cavatica/GRCh37/test3_normal_2.fq.gz",
      "class" : "File"
      }
  
}
```


## CAVATICA

These cwl.v1  also can be imported to [CAVATICA](http://cavatica.sbgenomics.com) by using Rabix Composer.

(Testing...)
