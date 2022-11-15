# TAF User Guidelines

## Introduction

### Aim

The Transparent Assessment Framework (TAF) is a framework to organize *data*,
*methods*, and *results* used in ICES assessments, so they are easy to find and
rerun later with new data.

It will provide an online archive of final assessment for each year, for all
stock categories. All data input and outputs are linked to existing or upcoming
ICES data services.

### Websites

URL                                                                                        | Purpose
------------------------------------------------------------------------------------------ | ----------------------------------
[taf.ices.dk](http://taf.ices.dk)                                                          | Main landing page
[doc](https://github.com/ices-taf/doc)                                                     | Documentation
[wiki](https://github.com/ices-taf/doc/wiki)                                               | Wiki
[ices-taf](https://github.com/ices-taf)                                                    | Assessments and other analyses
[diagrams](diagrams)                                                                       | Introductory diagrams
[tutorial-1](tutorial-1)                                                                   | Tutorial 1: Simple assessment
[github_guidelines](https://github.com/ices-taf/doc/blob/master/ices_github_guidelines.md) | ICES GitHub

### Packages

Package   | Links
--------- | -----------------------------------------------------------------------------------------------------------------------
icesTAF   | [CRAN homepage](https://github.com/ices-tools-prod/icesTAF) and [help pages](https://rdrr.io/cran/TAF/man/)
TAF       | [CRAN homepage](https://github.com/ices-tools-prod/TAF) and [help pages](https://rdrr.io/cran/TAF/man/TAF-package.html)
ICES pkgs | [GitHub repos](https://github.com/ices-tools-prod) and [release history](release_history.md)

## General Principles

The TAF stock assessment workflow is scripted in a series of R scripts.

Core scripts | Purpose
------------ | -------
`data.R`     | preprocess data, write TAF data tables
`model.R`    | run analysis, write model results
`output.R`   | extract results of interest, write TAF output tables

Optional scripts include `report.R` (prepare plots and tables for the report)
and `utilities.R` (custom functions used in the above scripts).

If a script becomes long, it is recommended to split it into separate scripts
with the same filename prefix, e.g. `report_plots.R` and `report_tables.R`,
where a main `report.R` script can simply source the underlying scripts:

``` r
source("report_plots.R")
source("report_tables.R")
```

## TAF Data Flow

The TAF [data presentation](data-presentation.pdf) describes the flow of data
from `bootstrap/initial/data` to `bootstrap/data` and finally to `data`.

## TAF Data Format

### CSV Files

### Units

Tonnes, thousands of individuals

## Bootstrap procedure

### Initial folder

The `bootstrap/initial` folder contains the initial *data* and *software* that
are not available online from another repository. These files are the basis of
all subsequent analysis, and guarantee that the TAF analysis can be rerun later
and will reproduce the original results, even if data in the underlying
databases (outside of TAF) may have changed after the original analysis was
submitted.

One objective of TAF is to document the data preparation. Therefore, the initial
data files should represent the original data before the main preprocessing and
data aggregation takes place. For example, the initial data could be the result
of an SQL database query, selecting one species of interest and all relevant
data columns for the analysis.

When using software that is not available online from another repository,
`bootstrap/initial/software` contains the model source and executable. A Windows
executable is required, while Linux and macOS executables are optional.

### Metadata

See `taf.bootstrap` and `process.bib` in:

https://cran.r-project.org/web/packages/icesTAF/icesTAF.pdf
