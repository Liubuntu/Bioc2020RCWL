# Connecting Bioconductor to other bioinformatics tools using `Rcwl`

## Instructor(s) name(s) and contact information

* [Qian Liu](https://github.com/liubuntu) (Qian.Liu@roswellpark.org)
* [Qiang Hu](https://github.com/hubentu) (Qiang.Hu@roswellpark.org)

## Workshop Description

This workshop introduces the Bioconductor toolchain for usage and
development of reproducible bioinformatics pipelines using packages of
Rcwl and RcwlPipelines. The Common Workflow Language (CWL) is an open
standard for development of data analysis workflows that is portable
and scalable across different tools and working environments. Rcwl
provides a simple way to wrap command line tools and build CWL data
analysis pipelines programmatically within R. It increases the ease of
development, usage, and maintenance of CWL pipelines, and furthermore
offers higher performance by intuitively supporting parallel work on
high performance computing (HPC). hundreds of pre-built bioinformatics
pipelines in CWL are included in RcwlPipelines. The tools and
pipelines are highly modularized for easy customization of complex
bioinformatics analysis. An scRNA-seq pipeline using STARsolo for
alignment and quantification, DropletUtils for filtering raw
gene-barcode matrix, fastqc and multiqc for reads quality control will
demonstrate the typical use case of these two packages. More details
for usage and examples are available on Rcwl website:
https://hubentu.github.io/Rcwl/.
