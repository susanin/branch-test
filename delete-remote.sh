#!/bin/sh

git branch -r --merged origin/master | 
  grep origin | 
  grep -v '>' | 
  grep -v master | 
  xargs -L1 | 
  awk '{split($0,a,"/"); print a[2]}' | 
  xargs git push origin --delete
