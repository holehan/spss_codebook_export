## SPSS files with embedded codebook

| File                                                      | Source                                                                                  |
| --------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [DarkTriadDate_person.sav](data/DarkTriadDate_person.sav) | <https://osf.io/j4fcb/>                                                                 |
| [mchr_dual_tasks.sav](data/mchr_dual_tasks.sav)           | <https://drive.google.com/file/d/1rJaZjiJ8p1gOKn6Vwq8AK9zSkB4aAMfv>                     |
| [37110-0001-Data.sav](data/37110-0001-Data.sav)           | <https://www.icpsr.umich.edu/web/HMCA/studies/37110/versions/V1>                        |
| [37110-0002-Data.sav](data/37110-0002-Data.sav)           | <https://www.icpsr.umich.edu/web/HMCA/studies/37110/versions/V1>                        |
| [sleep.sav](data/sleep.sav)                               | <http://spss.allenandunwin.com.s3-website-ap-southeast-2.amazonaws.com/data-files.html> |
| [survey.sav](data/survey.sav)                             | <http://spss.allenandunwin.com.s3-website-ap-southeast-2.amazonaws.com/data-files.html> |

## Converting files

### With R-package [codebook](https://rubenarslan.github.io/codebook/)

```r
library(codebook)
codebook_data <- rio::import("data/DarkTriadDate_person.sav", "sav")
codebook_table <- codebook::codebook_table(codebook_data)
rio::export(codebook_data, "export/r-codebook/DarkTriadDate_person_r-matrix.csv", quote = TRUE)
rio::export(codebook_table, "export/r-codebook/DarkTriadDate_person_r-codebook.json", quote = TRUE)
rio::export(codebook_table, "export/r-codebook/DarkTriadDate_person_r-codebook.csv", quote = TRUE)
```

### With [readstats cli](https://github.com/WizardMac/ReadStat)

```sh
readstat data/DarkTriadDate_person.sav export/readstat/DarkTriadDate_person_readstat-matrix.csv
extract_metadata data/DarkTriadDate_person.sav export/readstat/DarkTriadDate_person_readstat-codebook.json
```

### SPSS

Export codebook via `File` -> `Display Data File Information`.
