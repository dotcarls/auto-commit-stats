#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NOW="$( date )"

git --git-dir=$DIR/.git --work-tree=$DIR checkout $DIR/stats.txt
git --git-dir=$DIR/.git --work-tree=$DIR pull

w > $DIR/stats.txt
iostat >> $DIR/stats.txt

git --git-dir=$DIR/.git --work-tree=$DIR add $DIR/stats.txt
git --git-dir=$DIR/.git --work-tree=$DIR commit -m "[stats] ${NOW}"
git --git-dir=$DIR/.git --work-tree=$DIR push