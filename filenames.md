# Filenames in TAF assessments

## Scripts

Commonly used:

```
data.R
model.R
output.R
report.R
report.Rmd
utilities.R
```

Variations:

```
bootstrap.R
data_construct.R
data_export.R
data_maturity.R
data_survey.R
report_plots.R
report_tables.R
utilities_data.R
utilities_model.R
utilities_output.R
```

## Tables

### Age-structured data filenames

Required:

`data/`
```
catage.csv
maturity.csv
natmort.csv
wstock.csv
wcatch.csv
```

Survey indices should be saved as `survey_{survey name}.csv`, for example:

`data/`
```
survey_frgfs.csv
survey_ibtsq1.csv
survey_ibtsq3.csv
```

Additional:

`data/`
```
datage.csv
wdiscards.csv
latage.csv
wlandings.csv
propf.csv
propm.csv
```

Files containing the full age range if the assessment uses a plus group, can 
be recorded using the suffix `_full`:

`data/`
```
catage_full.csv
wcatch_full.csv
datage_full.csv
wdiscards_full.csv
latage_full.csv
wlandings_full.csv
wstock_full.csv
```

### Age-structured output filenames

Required:

`output/`
```
fatage.csv
natage.csv
qatage_ibtsq1.csv
qatage_ibtsq2.csv
summary.csv
```

If catches, and / or landings, discards and survey indices are estimated, these can be
recorded, using the suffix `_est`:

`output/`
```
catage_est.csv
datage_est.csv
latage_est.csv
survey_ibtsq1_est.csv
survey_ibtsq3_est.csv
```

### DLS example filenames

Commonly used:

```
last_advice.csv
summary.csv
surveys_all.csv
```

Variations:

```
catch.csv
cpue.csv
survey.csv
```
