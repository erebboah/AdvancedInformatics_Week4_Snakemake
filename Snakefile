rule all:
    input: 
        "data/mtcars_sqlite3",
        "plots/mtcars.png"

rule get_data:
    output:
        "data/mtcars_sqlite3"
    script: 
        "mtcars_sqlite3.R"

rule plot_results:
    input:
        "data/mtcars_sqlite3"
    output:
        "plots/mtcars.png"
    script: 
        "mtcars_plots.py"