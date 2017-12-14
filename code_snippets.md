# Bash Terminal
## Archiving and Compressing
### tar and gzip oneliner
```
tar -czvf archive.tar.gz /usr/local/something
```

### extract tar and gunzip oneliner
```
tar -xzvf archive.tar.gz
```

## Uploading to Remote
### using md5sum checks for data integrity post transfer
```
md5sum /usr/local/something.tar.gz
scp /usr/local/something.tar.gz afrank@xanadu-submit-int.cam.uchc.edu:/home/CAM/afrank
md5sum /home/CAM/afrank/something.tar.gz
```

# Xanadu cluster
## Running jobs
```
sbatch script.sh
```

## Checking job status
All jobs
```
squeue
```
My jobs
```
squeue -u afrank
```
Jobs running on a partition
```
squeue -p general
```
Cancel job
```
scancel
```

## Create interactive bash session
```
srun --pty bash
```
