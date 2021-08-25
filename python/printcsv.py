#!/bin/python
from sys import argv
from pandas import read_csv

# NOTE: Given that this is just a simple loop to process CSV files, there is no error handling other than from the python interpereter itself.
for i in range (1,len(argv)):
    file=argv[i]
    table=read_csv(file)
    print(table)
