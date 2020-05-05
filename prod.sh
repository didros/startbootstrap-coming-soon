#!/bin/sh

DEST="/var/www/html/cs"

list=`git status -s |  grep '\.css$\|\.html$\|.js$' | sed "s/^ *M* *//"`

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

