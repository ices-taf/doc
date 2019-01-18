# TAF Rules and Recommendations

## 1. Errors

### Files

The metadata files `data.bib` and `software.bib` can only exist in these file
locations:

- `bootstrap/data.bib`
- `bootstrap/software.bib`

## 2. Warnings

### Functions

These functions should not appear in TAF scripts, except in a custom
`bootstrap.R` script:

- `.libPaths`
- `download`
- `download.file`
- `install_github`
- `install.packages`
- `process.bib`
- `taf.bootstrap`

## 3. Notes

### Files

The following files are expected to exist:

- `data.R`
- `model.R`
- `output.R`
- `bootstrap/data.bib`
