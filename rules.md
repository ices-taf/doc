# TAF Rules and Recommendations

As a general framework, TAF allows a wide variety of analyses to run on the TAF
server. The definition of a TAF analysis can be expressed as a set of rules and
recommendations.

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

**Files**

The metadata files `DATA.bib` and `SOFTWARE.bib` can only exist in these file
locations:

- `bootstrap/DATA.bib`
- `bootstrap/SOFTWARE.bib`

**Functions**

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

**Files**

The following files are expected to exist:

- `data.R`
- `model.R`
- `output.R`
- `bootstrap/DATA.bib`

Raise a flag if a custom bootstrap file is found:

- `bootstrap.R`

## 2. Middle scan

*Examines files that were created during the bootstrap procedure*

## 3. Final scan

*Examines files that were created by the R scripts*
