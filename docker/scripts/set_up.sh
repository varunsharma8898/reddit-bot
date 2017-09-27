#!/bin/bash

SOURCE="$1"
echo $SOURCE

if [ "$SOURCE" = "" ]; then
    echo "Source dir not passed"
    exit 1
fi

cp $SOURCE/bin/* /opt/scripts/
cp $SOURCE/config/* /opt/config/
cp $SOURCE/static/* /opt/static/

chmod a+x /opt/scripts/*

# It seems something is messing up with LWP::Protocol::https
apt-get -qqy install liblwp-protocol-https-perl
