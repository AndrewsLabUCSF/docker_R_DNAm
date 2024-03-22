FROM r-base:4.3.3

RUN R --vanilla -e "install.packages(c('plyr', 'dplyr', 'tibble', 'glue', 'sm', 'readxl', 'readr', 'stringr', 'tidyr', 'purrr', 'lubridate', 'forcats', 'remotes', 'BiocManager'), repos='http://cran.rstudio.com', verbose = TRUE)"

RUN R --vanilla -e 'remotes::install_github("perishky/meffil")'
RUN R --vanilla -e 'BiocManager::install(c("minfi", "lumi", "limma", "watermelon", "dmrcate", "DMRcatedata", "illuminahumanmethylationepicanno.ilm10b4.hg19", "illuminahumanmethylationepicmanifest", "summarizedexperiment", "epidish", "s4vectors"), ask = FALSE)'

# RUN R --vanilla -e 'BiocManager::install("minfi", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("lumi", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("limma", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("watermelon", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("dmrcate", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("DMRcatedata", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("illuminahumanmethylationepicanno.ilm10b4.hg19", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("illuminahumanmethylationepicmanifest", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("summarizedexperiment", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("epidish", update = FALSE)'
# RUN R --vanilla -e 'BiocManager::install("s4vectors", update = FALSE)'
