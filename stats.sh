#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NOW="$( date )"

git --git-dir=$DIR/.git --work-tree=$DIR checkout $DIR/stats.txt
git --git-dir=$DIR/.git --work-tree=$DIR pull

iostat > $DIR/stats.txt
printf "\n" >> $DIR/stats.txt
top -l 1 -ncols 7 -o mem -stats command,mem,cpu,threads -n 5 >> $DIR/stats.txt

git --git-dir=$DIR/.git --work-tree=$DIR add $DIR/stats.txt
git --git-dir=$DIR/.git --work-tree=$DIR commit -m "[stats] ${NOW}"
git --git-dir=$DIR/.git --work-tree=$DIR push