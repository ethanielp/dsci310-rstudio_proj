FROM rocker/rstudio

RUN whoami
RUN pwd
RUN ls -alh
#RUN Rscript -e "install.packages('cowsay', repos= 'http:cran.us.r-project.org')"
#RUN Rscript -e "install.packages('remotes', repos= 'http:cran.us.r-project.org')"

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio renv.lock .
COPY --chown=rstudio:rstudio renv renv 
COPY --chown=rstudio:rstudio .Rprofile .

RUN ls -alh

USER rstudio
RUN Rscript -e  "renv::repair"
USER root
