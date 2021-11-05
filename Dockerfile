FROM python:3.8-buster

MAINTAINER Oliver Stolpe <oliver.stolpe@bih-charite.de>
LABEL org.opencontainers.image.source https://github.com/bihealth/kiosc-example-cellxgene

ENV DEBIAN_FRONTEND noninteractive

# Add the wait script to the image
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /usr/local/bin/wait
RUN chmod +x /usr/local/bin/wait

# Copy source code into Docker image.
RUN pip install cellxgene==1.0.0
RUN pip install numpy==1.20.0
