#!/bin/bash
#SBATCH --account=def-kdarvish
#SBATCH --cpus-per-task=16        # Allocate 16 CPU cores
#SBATCH --mem=128G                # Allocate 128GB of memory
#SBATCH --time=10:00:00
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Load Python and SciPy modules
module load python/3.10
module load scipy-stack

# Activate the virtual environment
source ~/.venv/oxe/bin/activate

echo "Environment setup complete!"

srun $@