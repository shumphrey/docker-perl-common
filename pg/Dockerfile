ARG TAG=latest
FROM perl:$TAG
label maintainer="Steven Humphrey <catchdockerhub@33k.co.uk>"

RUN apt-get update \
    && apt-get install -y --no-install-recommends postgresql-client \
    && cpanm -n App::cpm \
    && cpm install -g Task::Kensho DBD::Pg \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf ~/.cpanm \
    && rm -rf ~/.perl-cpm
