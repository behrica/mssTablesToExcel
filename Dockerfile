FROM r-base:3.4.4

RUN apt-get update && apt-get -t unstable install -y libxml2-dev libcurl4-openssl-dev libssl-dev
RUN install.r shiny xml2 tidyverse openxlsx
COPY *.R /home/docker/

WORKDIR /home/docker
EXPOSE 8888
CMD ["R", "-e", "shiny::runApp(port=8888,host='0.0.0.0')"]



