#!/usr/bin/env sh

histfile=~/.ipython/history
tmpfile=/tmp/ipython_history 

sort $histfile | uniq -d > $tmpfile && mv $tmpfile $histfile
