### Instructions
The commands in the alignment.sh file can be used to run cellranger 10x on raw fastq files provided by the sequencing core. 

#### Required files:
- raw fastqs: they will usually look something like this: SampleName_S*_L00*_R00*.fastq.gz where the * is a number, but don't worry if it's not an exact match.
- reference transcriptome for dm6.59: I have them placed in /mnt/d/sage/reference_genome/dmel6-59 so you can directly use the command as such if you're in the same "sage" working folder. If not, specify the relative path to that folder (or make a copy of it).

#### Working system:
- open a windows linux subsystem terminal (go to terminal -> new tab -> ubuntu
- the default folder should be /mnt/d. if not, navigate to it using cd /mnt/d/
- the folder for the sage project is /mnt/d/sage and it should have all the files I've used for aligning with cellranger before (for OregonR and Sage null scRNA-seq). You can use the same folder and run the forkhead null data as new samples.
- Navigate to the root folder of your project. Here I used /mnt/d/sage as mentioned. This is where cellranger will be run from so all file paths are relative to it.
- I usually create a new directory for the alignment results inside the quantification folder for each alignment, for example quantification/sage_rep1, quantification/sage_rep2
- it will be easier to manage if you keep the id (--id in the command) of your cellranger run and the results directory consistent.

#### Example command:
here,
- RUN_ID = sage_rep1,
- fastqs are in a folder called ```fastq/RUN_ID```
- YOUR_SAMPLE = Sage1,
- output directory is ```quantification/RUN_ID``` \
```cellranger count --id=RUN_ID --fastqs=fastq/RUN_ID --sample=YOUR_SAMPLE --transcriptome=quantification/reference_genome/dmel6-59/ --output-dir=quantification/RUN_ID --create-bam true ```

### IMPORTANT: READ BEFORE RUNNING CELLRANGER
Alignments usually take 19-20 hours for 4 samples. If the terminal window ever disconnects or closes during that time it will kill the run so I recommend starting a screen on the terminal tab to be safe. You can do that using this command: \

```screen -S your_screen_name ``` \
and detach the screen when you're done or if you need to kill the process for some reason. \

The lab computer has 24 cores (? don't quote me on this it's been a while) so you can also monitor if it's running properly by going to task manager and checking cpu usage. Or open a new ubuntu terminal tab and run ``htop`` to see the running processes. 

#### Finally
If you're using these instructions anyway, I recommend that you download alignment.sh and edit your filenames and then just doing 
``` chmod +x alignment_pipeline.sh```
``` bash alignment_pipeline.sh```

BUTTT if you're just getting started and want to test out just one alignment instead of all four in queue, run one line at a time straight away in terminal. This might help you debug. may the force be with you. \

peace and flies,\
V
