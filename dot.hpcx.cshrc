# start .cshrc

umask 002

limit stacksize unlimited

if ( ! $?LD_LIBRARY_PATH ) then
    setenv LD_LIBRARY_PATH /shared/build/netcdf/lib
else
    setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:/shared/build/netcdf/lib
endif

set path = ($path /shared/build/netcdf/bin /shared/build/ioapi-3.2/Linux2_x86_64gfort /opt/slurm/bin/ /usr/local/bin )

module load gcc-9.2.1
module load mpi/hpcx

alias SCR 'cd /shared/build/hpcx_gcc/CMAQ_v533/CCTM/scripts'

