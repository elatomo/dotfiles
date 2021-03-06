#!/bin/sh

# mvn-ctags.sh
# Generate ctags for a maven project.
# Based on http://stackoverflow.com/a/14397942/831797

DIR=target/sources

if [ ! -e "pom.xml" ]; then
    echo -e "\e[00;31mERROR: folder does not look like a maven project\e[00m"
    exit 1
fi

mkdir -p $DIR
# download sources
mvn eclipse:eclipse -DdownloadSources
# unpack them
sed -rn '/sourcepath/{s/.*sourcepath="M2_REPO.([^"]*).*/\1/;p}' .classpath | \
    (cd $DIR && xargs -i jar xf ~/.m2/repository/{})
# generate tags
ctags -R --totals=yes --languages=java --java-kinds=cefgip src/main $DIR
