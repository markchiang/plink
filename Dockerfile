FROM r-base
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y plink
RUN apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev

RUN \
  Rscript -e "install.packages('tidyverse')"

RUN \
  Rscript -e "install.packages('qqman')"

ENV PLINK_HOME          /usr/lib/plink
ENV PATH                $PLINK_HOME:$PATH

RUN apt-get install -y parallel
