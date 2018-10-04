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

