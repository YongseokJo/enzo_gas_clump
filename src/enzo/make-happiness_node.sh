#!/bin/sh  
#PBS -V
#PBS -v LD_LIBRARY_PATH=$LD_LIBRARY_PATH
#PBS -N enzo_install
#PBS -l nodes=1:ppn=2
#PBS -l walltime=120:00:00
#PBS -m abe
#PBS -M kerex@snu.ac.kr
#PBS -p 20


cd $PBS_O_WORKDIR

# This makes enzo.exe on Happiness@SNU

echo "Making enzo on"
pwd
make clean
make default
cd ../../
./configure
cd src/enzo/

module add ucx
module add mpich-3.3.1-intel-ucx

make machine-linux-mpich
#make precision-32 particles-64 integers-32 use-hdf4-yes packed-amr-yes taskmap-no fluxfix-no max-baryons-30 gravity-4s-no particle-id-32 opt-high
make precision-64 integers-32 particle-id-32 max-baryons-30 opt-aggressive lcaperf-no max-tasks-per-node-36 grackle-yes new-problem-types-yes
make show-config
make show-flags
make -j3
echo "Make done!"
pwd
date
