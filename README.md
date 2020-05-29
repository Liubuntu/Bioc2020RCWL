# Instructions for the workshop development

- Clone or fork https://github.com/lpantano/dummychapter1 to use as a template for creating your workshop as an installable package
- Use [vignettes/dummychapter1.Rmd](vignettes/dummychapter1.Rmd) vignette as a formatting example for your workshop
- Use [Docker Container for Bioconductor](https://github.com/Bioconductor/bioconductor_docker) to test your workshop for compatibility with `bioconductor/bioconductor_docker:devel`. This is important for attendees that will have access to Amazon Machine Images preloaded with R and RStudio servers and tested versions of all workshops. Example how to run Docker and access RStudio at http://localhost:8787/ (RStudio access works on Mac/Unix only)
```
docker run -e PASSWORD=bioc -p 8787:8787 -v $(pwd):/home/rstudio bioconductor/bioconductor_docker:devel
```

- Commit and push a sample `.travis.yml` file for implementing Continuous Integration against `bioc-devel`
    - Register on https://travis-ci.org/ with your GitHub account
    - Allow Travis access to all GitHub repositories 
    - Ensure Travis sees your repository and triggers the build on push (or, change to pull request only build)

- Write your workshop vignette, modify the `DESCRIPTION` file to add the dependencies. It is important that all dependencies be declared and that your workshop vignette can be built without errors on the Docker image we are using.
    - Make your workshop independent on packages installable from GitHub only. We strongly recommend using packages available from CRAN or `bioc-devel`
    - Data should ideally come from existing Bioconductor packages or the [Bioconductor ExperimentHub](http://bioconductor.org/packages/release/bioc/html/ExperimentHub.html) for speed, reliability, and local caching. If suitable data are not available via these options, additional data can be downloaded but we recommend you utilize [BiocFileCache](https://www.bioconductor.org/packages/release/bioc/html/BiocFileCache.html) for the download process to preserve bandwidth from repeated downloading. 
    - The workshops will be collated into a training booklet that will be made freely available under the [CC BY 4.0 license](http://creativecommons.org/licenses/by/4.0/). Review the `LICENSE` file - contribution of your workshop will be taken as agreement to have your workshop materials included under this license
    - Use the Build/Check button in RStudio, or `R CMD check` to ensure your workshop package checks without warnings
    
- We recommend communicating through the #biocworkshopbook channel on the `community-bioc` Slack team (https://community-bioc.slack.com/archives/CJDMYKG2U) for help
