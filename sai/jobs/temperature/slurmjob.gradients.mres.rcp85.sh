#! /bin/bash

# Some basic operations to perform using CDO 

#SBATCH --time=00:15:00      	# wall clock time
#SBATCH --nodes=1            	# number of nodes
#SBATCH --partition=rome,genoa	# partition
#SBATCH --job-name=mresrcp 	# job name
#SBATCH --account=uuce20038    	# account
#SBATCH --ntasks=1           	# number of tasks
#SBATCH --cpus-per-task=16   	# cpus per task

echo "$(date +"%D %T"): Running $0"
FILES=/projects/0/prace_imau/
source $HOME/.bashrc
conda activate geo
python temperaturegradients.py $FILES data/temperaturegradients.mres.rcp85.nc
