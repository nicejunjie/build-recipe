#!/bin/bash 

#version=10.3.0
#version=$1 

TARGET=/scratch1/07893/junjieli/soft/gcc



gccsite=https://ftp.gnu.org/gnu/gcc

[ ! -d src ] && mkdir src
workdir=`pwd`
for version in 13.2.0
do
  
  echo "doing gcc-$version " 

  wget $gccsite/gcc-${version}/gcc-${version}.tar.xz
  tar xf gcc-${version}.tar.xz
  cd gcc-${version}

  ./contrib/download_prerequisites
  mkdir build
  cd build
  ../configure --enable-languages=c,c++,fortran --disable-multilib --prefix=$TARGET/$version
  make -j 20 >& make.log
  make install >& make_install.log
 
  cd $workdir 

  mv gcc-$version src

done

