#!/bin/bash 

TARGET=/scratch1/07893/junjieli/grace-hopper/junjieli/spec/

CC=pgcc
CXX=pgc++
FC=pgfortran
MPICC=mpicc
MPICXX=mpicxx
MPIFC=mpif90

./configure --prefix=$TARGET CC=$CC CXX=$CXX FC=$FC  --enable-neon --enable-shared
./configure --prefix=$TARGET CC=$CC CXX=$CXX FC=$FC  --enable-neon --enable-shared --enable-float

./configure --prefix=$TARGET CC=$CC CXX=$CXX FC=$FC  --enable-neon --enable-shared
./configure --prefix=$TARGET CC=$CC CXX=$CXX FC=$FC  --enable-neon --enable-shared --enable-float

./configure --prefix=$TARGET CC=$MPICC CXX=$MPICXX FC=$MPIFC  --enable-neon --enable-shared --enable-mpi
./configure --prefix=$TARGET CC=$MPICC CXX=$MPICXX FC=$MPIFC  --enable-neon --enable-shared --enable-float --enable-mpi
