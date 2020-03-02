# Bioconductor toolchain for development of reproducible bioinformatics pipeline

# Instructor(s) name(s) and contact information
Qian Liu, Qian.Liu@roswellpark.org; 
Qiang Hu, Qiang.Hu@roswellpark.org

# Workshop Description
This workshop introduces the _Bioconductor_ toolchain for development of reproducible bioinformatics pipelines using packages of `Rcwl` and `RcwlPipelines`. The Common Workflow Language (CWL) is an open standard for development of data analysis workflows that is portable and scalable across different tools and working environments. `Rcwl` provides a simple way to wrap command line tools and build CWL data analysis pipelines programmatically within R. It increases the ease of development, usage, and maintenance of CWL pipelines, and furthermore offers higher performance by intuitively supporting parallel work on high performance computing (HPC). hundreds of pre-built bioinformatics pipelines in CWL are included in `RcwlPipelines`. The tools and pipelines are highly modularized for easy customization of complex bioinformatics analysis. An RNA-seq pipeline using `STAR` for alignment and `multiQC` for quality control demonstrates the typical use case of this software. More details for usage and examples are available on Rcwl website: https://hubentu.github.io/Rcwl/. 

## Pre-requisites
- Basic knowledge of R and usage of Bioconductor packages for NGS analysis
- Basic familiarity with running command-line tools
- No prior experience with CWL is necessary!

## Workshop Participation
Participants will be able to try out all of the functionality described. Active user participation throughout the event is highly encouraged including but not limited to lecture material, hands-on sections and final discussion. 

## _R_ / _Bioconductor_ packages used
* [`Rcwl`](https://bioconductor.org/packages/release/bioc/html/Rcwl.html)
* [`RcwlPipelines`](https://bioconductor.org/packages/release/bioc/html/RcwlPipelines.html)

## Time outline
| Activity                                          | Time |
|---------------------------------------------------|------|
| Overview of bioinformatics pipelines and CWL      | 10m  |
| Use existing bioinfo pipelines in `RcwlPipelines` | 15m  |
| Wrap command line tools using `Rcwl`              | 15m  |
| Customize your own pipelines using `Rcwl`         | 15m  |

# Workshop goals and objectives

## Learning goals
* Basic knowledge of Common Workflow Language (CWL)
* Knowledge of _R/Bioconductor_ interface of CWL 
* Usage of the pre-built bioinformatics pipelines in _R_
* Understand how to wrap command line tools with `Rcwl`
* Understand how to build bioinformatics pipelines with `Rcwl`

## Learning objectives
* Run the RNA-seq pipeline included in `RcwlPipelines`
* Create a basic `echo` tool using `Rcwl`
* Build a simple RNA-seq alignment tool `STAR`
