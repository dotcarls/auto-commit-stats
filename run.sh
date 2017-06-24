#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/stats.sh > /dev/null 2>&1 &
wait
echo "Stats updated"