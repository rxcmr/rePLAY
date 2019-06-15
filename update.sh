#!/bin/zsh

cd /var/mobile/rePLAY; make package install FINALPACKAGE=1; git add .; git commit -m "updating test device"; git push
