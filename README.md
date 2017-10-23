# gdc-workflow-cwl-v1

## Docker

[Docker](https://www.docker.com/) need to be installed before running the tools.


## Rabix

These cwl.v1 can run by [rabix-1.0.0-rc2](https://github.com/rabix/bunny/releases/download/v1.0.0-rc2/rabix-1.0.0-rc2.tar.gz) .

```
usage: rabix *.cwl input.json

```
**example for workflow-input : fastq2cram-workflow-input.json**

```
{
    "reference" : {
      "location" : "/Users/zhangb1/Documents/Tools/CWL.V1/exampleFASTA.fasta",
      "class" : "File"
    },
   "read_group": "'@RG\tID:bwa\tSM:cwl-test'",
   "output_bam": "test.sort.rd.bam",
   "output_cram": "test.sort.rd.cram",
    "input" : [ {
      "location" : "/Users/zhangb1/Documents/cavatica/GRCh37/test3_normal_1.fq.gz",
      "class" : "File"
    }, {
      "location" : "/Users/zhangb1/Documents/cavatica/GRCh37/test3_normal_2.fq.gz",
      "class" : "File"
      }
     ]
}
```


## CAVATICA

These cwl.v1  also can be imported to [CAVATICA](http://cavatica.sbgenomics.com) by using Rabix Composer.
