# TAF Rules and Recommendations

As a general framework, TAF allows a wide variety of analyses to run on the TAF
server. At the same time, some level of uniformity is useful. A few rules and
recommendations have been developed for TAF, to establish a workflow that allows
anyone to run and review (read and understand) the analysis.

Breaking a rule results in an **error**. The TAF server will not run the
analysis until such an issue is improved.

Not following a recommendation can either result in a warning or a note. A
**warning** is an issue that should be relatively straightforward for the user
to improve. A **note**, on the other hand, is a flag that may be related to an
intentional feature in an unusal TAF analysis.

There are three points in time when TAF rules and recommendations are checked:
the first scan (before anything is run), the middle scan (after the boot
procedure), and final scan (after R scripts have run).

## 1. First scan

*Examines files before anything is run*

### 1.1 Rules

**1.1.1 Files**

(a) R scripts use the uppercase `.R` file extension:

- `*.R`

(b) The metadata files `DATA.bib` and `SOFTWARE.bib` can only exist in these
    file locations:

- `boot/DATA.bib`
- `boot/SOFTWARE.bib`

**1.1.2 Content**

(a) These functions cannot appear in TAF scripts, except in a custom boot
    script:

- `.libPaths`
- `download`
- `download.file`
- `install_github`
- `install.packages`
- `process.bib`
- `taf.boot`

(b) All text files that have non-ASCII characters must be encoded as UTF-8:

- `enc.latin1`

(c) Each TAF script should only write to its corresponding directory:

- `data.R` writes to `data`
- `model.R` writes to `model`
- `output.R` writes to `output`
- `report.R` writes to `report`

### 1.2 Recommendations (warn)

### 1.3 Recommendations (note)

(a) This string should not appear in TAF scripts, except in a custom boot
    script:

- `http` (except stockassessment.org?)

(b) Rounding functions should not be used in data.R, model.R, or output.R:

- `icesRound(`
- `round(`
- `rnd(`

**1.3.1 Files**

(a) The following files are expected to exist:

- `data.R`
- `model.R`
- `output.R`
- `boot/DATA.bib`

(b) Authors in `SOFTWARE.bib` are spelled out as
   `{First M Last and First M Last and First M Last}`, so the `author` field has
   no commas:

- `,`

## 2. Middle scan

*Examines files that were created during the boot procedure*

## 3. Final scan

*Examines files that were created by the R scripts*

<hr>

> https://www.ietf.org/rfc/rfc2119.txt
