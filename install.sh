#!/bin/bash
#### powhegbox installation
startPWD=$PWD
base_dir=$PWD
install_dir=$base_dir/powhegbox_14_install
tarball_dir=$base_dir/powhegbox_14_tarBall
powboxUrl=http://cms-project-generators.web.cern.ch/cms-project-generators/slc5_ia32_gcc434/powheg/V1.0/src/powhegboxv1.4_Feb2012.tar.gz
tarball_name=`echo $powboxUrl | sed 's/.*\/\([^\/]*\)$/\1/'`
lhapdfLib=`scram tool info lhapdf | grep LIBDIR | sed 's/.*=\([^=]*\)$/\1/'`
if [ "X$1" == "X" ]; then
  mkdir $tarball_dir
  cd $tarball_dir
  wget $powboxUrl
  mkdir $install_dir
  cd $install_dir
  tar -xzf $tarball_dir/$tarball_name
  ## sourcing fastjet
  FastJetBase=`scram tool info fastjet | grep FASTJET_BASE | sed 's/.*=\([^=]*\)/\1/'`
  export PATH=$FastJetBase/bin:$PATH
  FastJetLib=`scram tool info fastjet | grep LIBDIR | sed 's/.*=\([^=]*\)/\1/'`
  #export LD_LIBRARY_PATH=$FastJetLib:$LD_LIBRARY_PATH
  export LIBRARY_PATH=$FastJetLib:$LIBRARY_PATH
  FastJetInclude=`scram tool info fastjet | grep INCLUDE | sed 's/.*=\([^=]*\)/\1/'`
  export CPLUS_INCLUDE_PATH=$FastJetInclude:$CPLUS_INCLUDE_PATH
  export LIBRARY_PATH=$FastJetInclude:$LIBRARY_PATH
  ## lhapdf
  lhapdfLib=`scram tool info lhapdf | grep LIBDIR | sed 's/.*=\([^=]*\)/\1/'`
  export LIBRARY_PATH=$lhapdfLib:$LIBRARY_PATH
  #export LD_LIBRARY_PATH=$lhapdfLib:$LD_LIBRARY_PATH
  #echo $LD_LIBRARY_PATH
  ## make
  cd POWHEG-BOX/hvq
  patch < ../../../cmsswPowHegBox_1_4.patch
  make   
  cp testrun-tdec-lhc/powheg.input ../../example_powheg.input 
else if [ "X$1" == "Xclean" ]; then
  echo -e "cleaning ..."
  #chmod -R u+w $installDir
  rm -rf $tarball_dir
  rm -rf $install_dir
  echo "done."
else
  echo "option $1 not supported"
  exit 1
fi
fi

