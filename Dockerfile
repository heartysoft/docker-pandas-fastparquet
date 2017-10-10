FROM frolvlad/alpine-miniconda3
MAINTAINER Ashic Mahtab (ashic@live.com)

ARG FP_VERSION

RUN apk add --no-cache curl llvm openssl-dev && \
    conda install -y fastparquet=$FP_VERSION ncurses -c conda-forge && \
    apk del --no-cache gcc musl-dev python3-dev && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache

