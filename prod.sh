#!/bin/sh

DEST="/var/www/html/cs"

list=`git status -s | sed "s/^MM* *//" | grep '\.css\|\.html\|.js'`

for i in $list
do
    echo cp $i $DEST/$i
done
echo Press enter to continue
read a

for i in $list
do
    cp $i $DEST/$i
done

