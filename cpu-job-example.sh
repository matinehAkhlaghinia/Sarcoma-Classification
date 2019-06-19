#!/bin/bash -l
# Batch script to run an OpenMP threaded job on Legion with the upgraded
# software stack under SGE.
# 1. Force bash as the executing shell.
#$ -S /bin/bash
# 2. Request ten minutes of wallclock time (format hours:minutes:seconds).
#$ -l h_rt=15:0:0
# 3. Request 1 gigabyte of RAM for each core/thread (must be an integer)
#$ -l mem=2G
# 4. Request 15 gigabyte of TMPDIR space (default is 10 GB)
#$ -l tmpfs=15G
# 5. Set the name of the job.
#$ -N cluster
# 6. Select 12 threads (the most possible on Legion).
#$ -pe smp 10
# 7. Set the working directory to somewhere in your scratch space.  This is
# a necessary step with the upgraded software stack as compute nodes cannot
# write to $HOME.
# Replace "<your_UCL_id>" with your UCL user ID :)
#$ -wd /home/zcabmak/Scratch/SS_labeled_512_12
# 8. Run the application.
python3 /home/zcabmak/Scratch/src/label_tiles.py
