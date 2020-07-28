# Connecting Bioconductor to other bioinformatics tools using `Rcwl`
![](https://github.com/liubuntu/Bioc2020RCWL/workflows/.github/workflows/basic_checks.yaml/badge.svg)

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
usage, development, and maintenance of CWL pipelines, and furthermore
offers higher performance by intuitively supporting parallel work with
high performance computing (HPC). More than a hundred of pre-built and
tested CWL tool/pipeline recipes are included in RcwlPipelines. These
tools and pipelines are highly modularized for easy customization of
complex bioinformatics analysis. Here we included a scRNAseq
preprocessing pipeline which uses `STARsolo` for alignment and
quantification, and `DropletUtils` for filtering raw gene-barcode
matrix and removing empty droplets. This pipeline demonstrates the
typical use case of our packages. The webpage for this workshop is
available at: https://liubuntu.github.io/Bioc2020RCWL/ 

## Docker instructions:

First, we need to initiate the docker. The follow command will mount
the local current directory (`$(pwd)`) to the docker container
(`/home/rstudio/outdir`), which is required to store the output files
from our tutorial. 

```
docker pull liubuntu/bioc2020rcwl:latest
docker run -e PASSWORD=bioconductor -p 8787:8787 -v $(pwd):/home/rstudio/outdir -d --privileged liubuntu/bioc2020rcwl
```

Then open http://localhost:8787 in your browser and login with
username "rstudio" and password "bioconductor". Within rstudio, you
can open the workshop script `vignettes/Bioc2020RCWL.Rmd`.

You can also look at the html file by: 
```
browseVignettes(package = "Bioc2020RCWL")
```

Click on one of the links, “HTML”, “source”, “R code”. In case of “The
requested page was not found” error, add "help/" to the URL right
after the hostname:
"http://localhost:8787/help/library/Bioc2020RCWL/doc/Bioc2020RCWL.html"

When you are done with the workshop, stop you docker: 
```
docker ps -a # List all running containers 
docker stop <CONTAINER ID> # or, <NAMES> - Stop a container 
```

