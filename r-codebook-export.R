#!/usr/bin/env Rscript
library(codebook)
codebook_data <- rio::import("data/DarkTriadDate_person.sav", "sav")
codebook_table <- codebook::codebook_table(codebook_data)
rio::export(codebook_data, "export/r-codebook/DarkTriadDate_person_r-matrix.csv", quote = TRUE)
rio::export(codebook_table, "export/r-codebook/DarkTriadDate_person_r-codebook.json", quote = TRUE)
rio::export(codebook_table, "export/r-codebook/DarkTriadDate_person_r-codebook.csv", quote = TRUE)
