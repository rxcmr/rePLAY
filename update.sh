#!/bin/zsh

cd /var/mobile/rePLAY; git pull; make package install FINALPACKAGE=1; git add .; git commit -m "updating test device"; git push
