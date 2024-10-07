#!/bin/bash
#SBATCH --account=def-kdarvish
#SBATCH --gpus-per-node=1         # Number of GPU(s) per node
#SBATCH --cpus-per-task=8         # CPU cores/threads
#SBATCH --time=10:00:00
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Load Python and SciPy modules
module load python/3.10
module load scipy-stack

# Activate the virtual environment
source ~/.venv/oxe/bin/activate

echo "Environment setup complete!"

srun $@