# TAF stock assessment repository types

A TAF stock assesment repository can be for several purposes.  The we the purpose is identified is through a variable called `<purpose>`
and is used in the repository name:

```
<year>_<stock code>_<purpose>
```

for example

```
2019_cod.27.47d20_forecasts
```

The list of `<purpose>`s are as follows (to be created as vocabularies):
* `data`
* `data.survey`
* `data.catch`
* `assmnt`
* `forecasts`
* `refpoints`

The `data` type can be split down into the type of data analysis being done:
* `data.survey`
* `data.catch`

there is also the possibility of using a type for benchmark assessments
* `benchmark`

 which an be split down and use the other types
* `benchmark.<type>`

for example: 
```
2019_cod.27.47d20_refpoints
2019_cod.27.47d20_data.survey
2019_cod.27.47d20_benchmark.data.survey
```
this last examlple would be a TAF repository to hold the data preparation scripts for creating the survey index developed
at a benchmark workshop.

## adding alternative assessments and procedures

In the case of a benchmark it is often of interest to run multiple assessments on the same data.  This can be accomodated by creating
a seperate TAF repo for each assessment, using a extended nameing convention

```
<year>_<stock code>_<purpose>_<identifier>
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


## As JSON

as a JSON structure for
```
2019_cod.27.47d20_benchmark.data.survey_ibtsq1
```

would be something like:

```json
{
  "year": "2019",
  "stock": {
    "stockcode": "cod",
    "areatype": "27",
    "areacode": "47d20"
  },
  "purpose": "benchmark.data.survey",
  "identifier": "ibtsq1"
}
```

