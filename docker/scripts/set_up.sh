#!/bin/bash

SOURCE="$1"
echo $SOURCE

if [ "$SOURCE" = "" ]; then
    echo "Source dir not passed"
    exit 1
fi

ls -al $SOURCE

cp $SOURCE/bin/* /opt/scripts/
chmod a+x /opt/scripts/*


