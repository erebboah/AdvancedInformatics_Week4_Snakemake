# Advanced Informatics 2021 Week 4 exercise
# Python script to make plots from mtcars sqlite3 database

import pandas as pd
import sqlite3
import seaborn as sns
import matplotlib.pyplot as plt

con = sqlite3.connect(snakemake.input[0])
df = pd.read_sql("select * from mtcars", con)

g = sns.FacetGrid(df, col="cyl")
g.map(sns.scatterplot,"wt","mpg");
g.savefig(snakemake.output[0])
