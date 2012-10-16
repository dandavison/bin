#!/bin/sh

git branch |  sed 's,*,,'| while read branch ; do 
    if [ -n "$(git rev-list --ancestry-path ${1}..${branch})" ] ; then
	echo $branch
    fi
done
