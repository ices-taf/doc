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

URL | Purpose
--- | -------
[taf.ices.dk](http://taf.ices.dk) | Main landing page
[taf.ices.local/TAF](http://taf.ices.local/TAF) | TAF development web page (only available within ICES)
[ices-taf-dev.github.io](https://ices-taf-dev.github.io) | Technical overview and design comments
[github.com/ices-taf](https://github.com/ices-taf)| Assessments (R scripts)
[github.com/ices-taf/doc](https://github.com/ices-taf/doc) | User guidelines
[github.com/ices-tools-prod](https://github.com/ices-tools-prod) | R packages
[github.com/ices-taf/doc/projects/1](https://github.com/ices-taf/doc/projects/1?fullscreen=true) | TAF development project board
[github.com/ices-taf/doc/milestones](https://github.com/ices-taf/doc/milestones?direction=asc&sort=due_date&state=open) | TAF project monthly sprints

## General Principles

The entire stock assessment workflow is scripted in a series of R scripts:

data.R

input.R

model.R

output.R

## TAF Data Format

### CSV Files

### Units

Tonnes, thousands of individuals

## Begin folder

### Data files

The `begin/data` subfolder contains the initial data step to be archived. These
files are the basis of all subsequent analysis, and guarantee that the TAF
analysis can be rerun later and will reproduce the original results, even if
data in the underlying databases (outside of TAF) may have changed after the
original analysis was submitted.

One objective of TAF is to document the data preparation. Therefore, the initial
data files should represent the original data before the main preprocessing and
data aggregation takes place. For example, the initial data could be the result
of an SQL database query, selecting one species of interest and all relevant
data columns for the analysis.

### Model executables:

The `begin/model` subfolder is for model source code and executables, when using
a model that is not in the ICES Toolbox of stock assessment models.

To make the analysis reproducible across platforms, two executables should be
uploaded, one for Linux and one for Windows.
