# TAF stock assessment repository types

A TAF stock assesment repository can be for several purposes.  The we the purpose is identified is through a variable called `<type>`
and is used in the repository name:

```
<year>_<stock code>_<type>
```

for example

```
2019_cod.27.47d20_forecasts
```

The list of `<types>` are as follows (to be created as vocabularies):
* `data`
* `assmnt`
* `forecasts`
* `refpoints`

there is also the possibility of using a type for benchmark assessments
* `benchmark`

 which an be split down and use the other types
* `benchmark.<type>`

for example: 
```
2019_cod.27.47d20_benchmark.data
```

is would be a TAF repository to hold the data preparation scripts used at a benchmark workshop.

## adding alternative assessments and procedures

In the case of a benchmark it is often of interest to run multiple assessments on the same data.  This can be accomodated by creating
a seperate TAF repo for each assessment, using a extended nameing convention

```
<year>_<stock code>_<type>_<model>
```

for example

```
2019_cod.27.47d20_assmnt_xsa
```

or

```
2019_cod.27.47d20_assmnt_multifleet
```

The `<model>` type for now is less strictly controlled, but could be linked to the model vocabulary: https://vocab.ices.dk/?ref=1525

