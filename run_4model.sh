#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=10G
#SBATCH --time=1-00:15:00     # 1 day and 15 minutes
#SBATCH --mail-user=rfabu001@ucr.edu
#SBATCH --mail-type=ALL
#SBATCH --job-name="4model_run1"
#SBATCH -p intel # This is the default partition, you can use any of the following; intel, batch, highmem, gpu

# Print current date
date

# Load paml
module load paml

# Concatenate BAMs
codeml

# Print name of node
hostname
