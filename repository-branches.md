# Repository branches

There are two branches on every TAF stock assessment repository:

1. `taf`
2. `user`

### The `taf` branch

The `taf` branch holds the official version of the code and results. The data
and plots on this branch have been created on the ICES TAF server using the
following commands:

```r
clean()
source.all()
```

This ensures that the files found in the `data`, `output`, and `report` folders
have been created on the TAF server and are therefore considered reproducible.

### The `user` branch

The `user` branch holds the code (and potentially the results) uploaded by the
TAF user. Currently there are no restrictions on what files are uploaded to the
user branch.

A clean and simple TAF analysis has a `user` branch containing only files that
are retained after a cleanup:

```r
clean()
```
