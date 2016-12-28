#!/bin/sh

GALAXY_HOME=$(pwd)
export GALAXY_HOME=$GALAXY_HOME

cd data
for fn in $(ls *.gz);
do
    gunzip $fn
    echo "gunzip $fn"
done
cd ..

echo "finished!"
echo "put GALAXY_HOME environment like 'export GALAXY_HOME=$GALAXY_HOME'"
