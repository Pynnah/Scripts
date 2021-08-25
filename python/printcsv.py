#!/bin/python
from sys import argv
from pandas import read_csv

for i in range (1,len(argv)):
    file=argv[i]
    table=read_csv(file)
    print(table)
