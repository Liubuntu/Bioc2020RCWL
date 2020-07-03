FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

#RUN apt-get update && apt-get install -y gnupg2
RUN wget http://neuro.debian.net/lists/bionic.us-ca.full -O /etc/apt/sources.list.d/neurodebian.sources.list
#RUN apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9

RUN apt-get update --allow-insecure-repositories && \
    apt-get install -y --allow-unauthenticated libglpk-dev python3-pip singularity-container && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN rm -r /usr/local/lib/python2.7/dist-packages/cwltool & rm /usr/local/bin/cwltool
RUN pip3 install -I cwltool

RUN Rscript -e "BiocManager::install('RcwlPipelines')"
RUN Rscript -e "devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"

