#!/bin/bash
readstat -f data/spss27.sav export/readstat/spss27_readstat-matrix.csv
extract_metadata data/spss27.sav export/readstat/spss27_readstat-codebook.json
