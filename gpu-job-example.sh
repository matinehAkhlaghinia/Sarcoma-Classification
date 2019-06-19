#!/bin/bash -l
# Batch script to run a GPU job on Legion under SGE.
# 0. Force bash as the executing shell.
#$ -S /bin/bash
# 1. Request a number of GPU cards, in this case 2 (the maximum)
#$ -l gpu=1
# 2. Request ten minutes of wallclock time (format hours:minutes:seconds).
#$ -l h_rt=3:0:0
# 3. Request 1 gigabyte of RAM (must be an integer)
#$ -l mem=4G
# 4. Request 15 gigabyte of TMPDIR space (default is 10 GB)
#$ -l tmpfs=10G
# 5. Set the name of the job.
#$ -N alexnet
# 6. Set the working directory to somewhere in your scratch space.  This is
# a necessary step with the upgraded software stack as compute nodes cannot
# write to $HOME.
# Replace "<your_UCL_id>" with your UCL user ID :)
#$ -wd /home/zcabmak/Scratch/plots_1
# 7. Your work *must* be done in $TMPDIR 
cd $TMPDIR
# 8. load the cuda module (in case you are running a CUDA program
module unload compilers mpi
module load compilers/gnu/4.9.2
module load cuda/7.5.18/gnu-4.9.2
# 9. Run the application - the line below is just a random example.
python3 /home/zcabmak/Scratch/src/inception_1.py
# 10. Preferably, tar-up (archive) all output files onto the shared scratch area
tar zcvf $HOME/Scratch/files_from_job_$JOB_ID.tar.gz $TMPDIR
# Make sure you have given enough time for the copy to complete!
