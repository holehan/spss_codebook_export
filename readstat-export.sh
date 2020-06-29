#!/bin/bash
readstat data/DarkTriadDate_person.sav export/readstat/DarkTriadDate_person_readstat-matrix.csv
extract_metadata data/DarkTriadDate_person.sav export/readstat/DarkTriadDate_person_readstat-codebook.json
