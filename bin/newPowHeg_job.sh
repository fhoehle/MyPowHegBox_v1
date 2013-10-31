#!/bin/bash
if [ "X$1" == "X" ]; then
echo "provide directory for new job"
  exit 1
fi
echo $(echo -n "$1" | wc -m)
if [[ "$(echo -n \"$1\" | wc -m)" -gt "20" ]]; then
  echo "only max 20 characters"
  exit 1
fi
mkdir $1
touch $1/$1-powheg.input
echo "created dummy input: $1-powheg.input"
echo "$1" > $1/input
#cp $LOCAL_POWHEGDIR/powhegbox_14_install/example_powheg.input $1/powheg.input
