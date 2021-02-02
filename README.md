# Advanced Informatics Week 4 Exercises

![mtcars plots](https://github.com/erebboah/AdvancedInformatics_Week4_Snakemake/blob/main/plots/mtcars.png)

1. If there is a target included in the workflow, it can be specified by `snakemake some_target --delete-all-output --cores 1`. If there is no target, `snakemake --delete-all-output --cores 1`.
2. There is unfortunately no way to delete output from a single rule, only deleting output from all rules. 
3. Köster, J., & Rahmann, S. (2012). Snakemake—a scalable bioinformatics workflow engine. Bioinformatics, 28(19), 2520-2522.

After `touch`ing the `mtcars_sqlite3.R` script:
```
Building DAG of jobs...
Using shell: /bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	all
	1	get_data
	1	plot
	3
Select jobs to execute...

[Tue Feb  2 07:33:00 2021]
rule get_data:
    input: mtcars_sqlite3.R
    output: data/mtcars_sqlite3
    jobid: 1

[Tue Feb  2 07:33:01 2021]
Finished job 1.
1 of 3 steps (33%) done
Select jobs to execute...

[Tue Feb  2 07:33:01 2021]
rule plot:
    input: data/mtcars_sqlite3, mtcars_plots.py
    output: plots/mtcars.png
    jobid: 2

[Tue Feb  2 07:33:02 2021]
Finished job 2.
2 of 3 steps (67%) done
Select jobs to execute...

[Tue Feb  2 07:33:02 2021]
localrule all:
    input: data/mtcars_sqlite3, plots/mtcars.png
    jobid: 0

[Tue Feb  2 07:33:02 2021]
Finished job 0.
3 of 3 steps (100%) done
Complete log: /Users/liz/Documents/AdvancedInformatics_Week4/.snakemake/log/2021-02-02T073300.307349.snakemake.log
```

After `touch`ing the `mtcars_plots.py` script:
```
Building DAG of jobs...
Using shell: /bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	all
	1	plot
	2
Select jobs to execute...

[Tue Feb  2 07:34:45 2021]
rule plot:
    input: data/mtcars_sqlite3, mtcars_plots.py
    output: plots/mtcars.png
    jobid: 2

[Tue Feb  2 07:34:46 2021]
Finished job 2.
1 of 2 steps (50%) done
Select jobs to execute...

[Tue Feb  2 07:34:46 2021]
localrule all:
    input: data/mtcars_sqlite3, plots/mtcars.png
    jobid: 0

[Tue Feb  2 07:34:46 2021]
Finished job 0.
2 of 2 steps (100%) done
Complete log: /Users/liz/Documents/AdvancedInformatics_Week4/.snakemake/log/2021-02-02T073445.597127.snakemake.log
```
