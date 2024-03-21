FROM r-base:4.3.3

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN R --vanilla -e "install.packages(c('plyr', 'dplyr', 'tibble', 'glue', 'sm', 'remotes', 'readxl', 'readr', 'stringr', 'tidyr', 'purrr', 'lubridate', 'forcats'))"

RUN R --vanilla -e 'remotes::install_github("perishky/meffil")'

RUN R --vanilla -e 'BiocManager::install("minfi")'
RUN R --vanilla -e 'BiocManager::install("lumi")'
RUN R --vanilla -e 'BiocManager::install("limma")'
RUN R --vanilla -e 'BiocManager::install("watermelon")'
RUN R --vanilla -e 'BiocManager::install("dmrcate")'
RUN R --vanilla -e 'BiocManager::install("DMRcatedata")'
RUN R --vanilla -e 'BiocManager::install("illuminahumanmethylationepicanno.ilm10b4.hg19")'
RUN R --vanilla -e 'BiocManager::install("illuminahumanmethylationepicmanifest")'
RUN R --vanilla -e 'BiocManager::install("summarizedexperiment")'
RUN R --vanilla -e 'BiocManager::install("epidish")'
RUN R --vanilla -e 'BiocManager::install("s4vectors")'