#SBATCH -p econ
#SBATCH --time=0-3:00:00
#SBATCH --mem=64GB
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=20
#SBATCH --job-name=myerson
#SBATCH -o slurm.%N.%j.out # STDOUT
#SBATCH -e slurm.%N.%j.err # STDERR

module load Julia
Julia codefinal.jl
