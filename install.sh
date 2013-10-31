#!/bin/bash
#### powhegbox installation
startPWD=$PWD
base_dir=$PWD
install_dir=$base_dir/powhegbox_14_install
tarball_dir=$base_dir/powhegbox_14_tarBall
mkdir $tarball_dir
cd $tarball_dir
powboxUrl=http://cms-project-generators.web.cern.ch/cms-project-generators/slc5_ia32_gcc434/powheg/V1.0/src/powhegboxv1.4_Feb2012.tar.gz
tarball_name=`echo $powboxUrl | sed 's/.*\/\([^\/]*\)$/\1/'`
wget $powboxUrl
cd $install_dir
tar -xzf $tarball_dir/$tarball_name


