#here we have four samples (or_rep1, or_rep2, sage_rep1 and sage_rep2). replace the names with your sample names.
#your outputs are going to be in quantification/sample_name/outs

cellranger count --id=sage_rep2 --fastqs=fastq/sage_rep2 --sample=Sage2 --transcriptome=quantification/reference_genome/dmel6-59/ --output-dir=quantification/sage_rep2 --create-bam true

cellranger count --id=sage_rep2 --fastqs=fastq/sage_rep2 --sample=Sage2 --transcriptome=quantification/reference_genome/dmel6-59/ --output-dir=quantification/sage_rep2 --create-bam true

cellranger count --id=or_rep1 --fastqs=fastq/or_rep1 --sample=OR1 --transcriptome=quantification/reference_genome/dmel6-59/ --output-dir=quantification/or_rep1 --create-bam true

cellranger count --id=or_rep2 --fastqs=fastq/or_rep2 --sample=OR2 --transcriptome=quantification/reference_genome/dmel6-59/ --output-dir=quantification/or_rep2 --create-bam true
