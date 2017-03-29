#!/bin/bash

version="v0.1"
list=$(ls src)
for package in $list
do
version=$(cat src/$package/repo.json | grep "\"Version\":" | sed s/"\"Version\":"/""/ | sed s/","/""/ | tr "\t" "e" | sed s/"eeee"/""/ | sed s/" "/""/ | sed s/"\""/""/ | sed s/"\""/""/)
zip -qr9 packages/$package-v$version.zip src/$package
done

