#!/bin/bash -l
#Edit this script to suit your purposes
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=1000G
#SBATCH --job-name=Bunya_AutoEncode
#SBATCH --time=40:00:00
#SBATCH --partition=general
#SBATCH --account=a_rahimi
#SBATCH -o LinClassiferOut.txt
#SBATCH -e LinClassifierError.txt


module load anaconda3/2022.05
source $EBROOTANACONDA3/etc/profile.d/conda.sh
conda activate myenv
export PATH=/home/benwalters/.conda/envs/myenv/bin:$PATH
export PYTHONPATH=/home/benwalters/.conda/envs/myenv/lib/python3.11/site-packages:$PYTHONPATH
cd /scratch/user/benwalters/Morse\ Code\ Dataset

python NeuroMorse/Linear\ Classifier/LinClass.py