#/bin/bash

# move the content of /usr/etc to /etc and delete it
cp -fra /usr/etc /etc
rm -rf /usr/etc

