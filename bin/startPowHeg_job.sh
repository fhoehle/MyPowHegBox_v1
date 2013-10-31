#!/bin/bash
if [ "X$1" == "X" ]; then 
  if [ ! -f input ]; then
    echo "no file input found"
    exit 1
  fi
  echo "starting powheg"
  $LOCAL_POWHEGDIR/powhegbox_14_install/POWHEG-BOX/hvq/pwhg_main < input
else 
  if [ ! -f $1 ]; then
    echo "no input file $1 found"
    exit 1
  fi
  echo "${1%-powheg.input}" > input 
  $LOCAL_POWHEGDIR/powhegbox_14_install/POWHEG-BOX/hvq/pwhg_main < input

fi
