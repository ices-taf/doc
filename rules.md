# TAF Rules and Recommendations

As a general framework, TAF allows a wide variety of analyses to run on the TAF
server. Only a few rules and recommendations have been developed, to establish a
workflow that allows anyone to reproduce and review (read and understand) the
analysis.

Breaking a rule results in an **error**. The TAF server will not run the
analysis until such an issue is improved.

Not following a recommendation can either result in a warning or a note. A
**warning** is an issue that should be relatively straightforward for the user
to improve. A **note**, on the other hand, is a flag that may reflect an
intended feature of an unconventional TAF analysis.

There are three points in time when TAF rules and recommendations are checked:
the first scan (before anything is run), the middle scan (after bootstrap
procedure), and final scan (after R scripts have run).

## 1. First scan

*Examines files before anything is run*

### 1.1 Rules

**1.1.1 Files**

The metadata files `DATA.bib` and `SOFTWARE.bib` can only exist in these file
locations:

- `bootstrap/DATA.bib`
- `bootstrap/SOFTWARE.bib`

**1.1.2 Functions**

These functions should not appear in TAF scripts, except in a custom
`bootstrap.R` script:

- `.libPaths`
- `download`
- `download.file`
- `install_github`
- `install.packages`
- `process.bib`
- `taf.bootstrap`

### 1.2 Recommendations (warn)

None.

### 1.3 Recommendations (note)

**1.3.1 Files**

(a) The following files are expected to exist:

- `data.R`
- `model.R`
- `output.R`
- `bootstrap/DATA.bib`

(b) Raise a flag if a custom bootstrap file is found:

- `bootstrap.R`

(c) R scripts are only expected at the top level:

- `./*.R`

## 2. Middle scan

*Examines files that were created during the bootstrap procedure*

## 3. Final scan

*Examines files that were created by the R scripts*
