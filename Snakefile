rule all:
    input: 
        'data/mtcars_sqlite3',
        'plots/mtcars.png'

rule get:
    output:
        'data/mtcars_sqlite3'
    script: 
        'mtcars_sqlite3.R'

rule plot:
    input:
        'data/mtcars_sqlite3'
    output:
        'plots/mtcars.png'
    script: 
        'mtcars_plots.py'
