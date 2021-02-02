rule all:
    input: 
        'plots/mtcars.png'

rule get_data:
    input:
	'mtcars_sqlite3.R'
    output:
        'data/mtcars_sqlite3'
    script: 
        'mtcars_sqlite3.R'

rule plot:
    input:
        'data/mtcars_sqlite3',
	'mtcars_plots.py'
    output:
        'plots/mtcars.png'
    script: 
        'mtcars_plots.py'
