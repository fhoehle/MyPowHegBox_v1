#!/bin/bash
if [ "X$1" == "X" ]; then
echo "provide directory for new job"
  exit 1
fi
mkdir $1
cp $LOCAL_POWHEGDIR/powhegbox_14_install/example_powheg.input $1/powheg.input
