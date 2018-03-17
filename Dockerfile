ARG TAG=latest
FROM perl:$TAG
label maintainer="Steven Humphrey <catchdockerhub@33k.co.uk>"

RUN cpanm -n App::cpm \
    && cpm install -g Task::Kensho \
    && rm -rf ~/.cpanm \
    && rm -rf ~/.perl-cpm
