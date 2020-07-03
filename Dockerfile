FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN rm -r /usr/local/lib/python2.7/dist-packages/cwltool & rm /usr/local/bin/cwltool
RUN apt-get update && apt-get install -y python3-pip gnupg2
RUN wget http://neuro.debian.net/lists/bionic.us-ca.full -O /etc/apt/sources.list.d/neurodebian.sources.list
RUN apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9
RUN apt-get update && apt-get install -y singularity-container
RUN pip3 install -I cwltool
RUN Rscript -e "BiocManager::install('RcwlPipelines')"
#RUN Rscript -e "devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"

