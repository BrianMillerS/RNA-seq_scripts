#!/bin/bash

# this script runs trimmomatics on every fastq file in the current workin direcctory

for fastq_file in *.fastq; do
    #creates new filename for each .fastq, e.g. hello.fastq -> hello_trimmCleaned.fastq
    output_file_name=$(echo $fastq_file | cut -d'.' -f1)
    output_file_name+="_trimmCleaned.fastq"
    #runs trimmomatic
    java -jar trimmomatic-0.36.jar SE $fastq_file $output_file_name TRAILING:30 MINLEN:36
done