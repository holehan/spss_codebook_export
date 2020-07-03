#!/usr/bin/env Rscript
library(codebook)
codebook_data <- rio::import("data/spss27.sav", "sav")
codebook_table <- codebook::codebook_table(codebook_data)
rio::export(codebook_data, "export/r-codebook/spss27_r-matrix.csv", quote = TRUE)
rio::export(codebook_table, "export/r-codebook/spss27_r-codebook.json", quote = TRUE)
rio::export(codebook_table, "export/r-codebook/spss27_r-codebook.csv", quote = TRUE)
