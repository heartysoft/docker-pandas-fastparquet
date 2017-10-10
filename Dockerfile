FROM frolvlad/alpine-miniconda3
MAINTAINER Ashic Mahtab (ashic@live.com)

ARG FP_VERSION

RUN apk add --no-cache curl llvm openssl-dev && \
    conda install -y fastparquet=$FP_VERSION ncurses -c conda-forge && \
    conda clean -a && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/cache/*

