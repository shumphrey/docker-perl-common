#!/usr/bin/env bash

perlversions=(5.24 5.26)

for perl in ${perlversions[@]}; do
    docker build -t shumphrey/perl-common:$perl --build-arg TAG=$perl .
done

## Same but with postgres
for perl in ${perlversions[@]}; do
    docker build -f pg/Dockerfile -t shumphrey/perl-common:${perl}-pg --build-arg TAG=$perl .
done
