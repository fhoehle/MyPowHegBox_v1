#!/bin/bash
## sourcing fastjet
#FastJetBase=`scram tool info fastjet | grep FASTJET_BASE | sed 's/.*=\([^=]*\)/\1/'`
#export PATH=$FastJetBase/bin:$PATH
#FastJetLib=`scram tool info fastjet | grep LIBDIR | sed 's/.*=\([^=]*\)/\1/'`
#export LD_LIBRARY_PATH=$FastJetLib:$LD_LIBRARY_PATH
#export LIBRARY_PATH=$FastJetLib:$LIBRARY_PATH
#FastJetInclude=`scram tool info fastjet | grep INCLUDE | sed 's/.*=\([^=]*\)/\1/'`
#export CPLUS_INCLUDE_PATH=$FastJetInclude:$CPLUS_INCLUDE_PATH
#export LIBRARY_PATH=$FastJetInclude:$LIBRARY_PATH
#lhapdfLib=`scram tool info lhapdf | grep LIBDIR | sed 's/.*=\([^=]*\)/\1/'`
#export LIBRARY_PATH=$lhapdfLib:$LIBRARY_PATH
####
#export LD_LIBRARY_PATH=$lhapdfLib:$LD_LIBRARY_PATH
#echo $LD_LIBRARY_PATH
export PATH=$PWD/bin:$PATH
export LOCAL_POWHEGDIR=$PWD
