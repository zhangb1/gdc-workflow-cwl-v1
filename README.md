# gdc-workflow-cwl-v1

## Rabix

This cwl.v1 can run by [rabix](http://rabix.io) .

```
usage: rabix bwa-mem.cwl input.json

```

**example : input.json**

```
{
    "reference" : {
      "location" : "/Users/zhangb1/Documents/Tools/CWL.V1/exampleFASTA.fasta",
      "class" : "File"
    },
   "read_group": "'@RG\tID:cwl-test\tSM:Test'",
   "output": "test.bam",
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
