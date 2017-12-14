#!/bin/bash
#SBATCH --job-name=myscript
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --partition=general
#SBATCH --mail-type=END
#SBATCH --mem=50G
#SBATCH --mail-user=first.last@uconn.edu
#SBATCH -o myscript_%j.out
#SBATCH -e myscript_%j.err

echo "Hello World"
