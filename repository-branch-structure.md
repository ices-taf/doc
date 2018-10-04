# Repository branch structure

There are two branches on every TAF stock assessment repository:

1. `taf`
2. `user`

### The `taf` branch

The `taf` branch holds the official version of the code and results.  The data and plots contained in this 
branch have been created on the ICES TAF server using the following commands:

```r
icesTAF::clean()
icesTAF::sourceAll()
```

This ensures that the files and images found in the `data`, `input`, and `results` folders have been created on the TAF server and are therefore considered reproducible.

### The `user` branch

The 'user' branch hold the code (and potentially the results) uploaded by the TAF user.  Currently there are no restrictions on what files are uploaded to the user branch.
