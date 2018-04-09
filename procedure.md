# Procedure to get an assessment into TAF

To make the task easier, and to measure the progress towards the goal, we divide
it into steps. The procedure below applies equally to assessment coordinators
and the TAF support team.

Five steps to script the analysis from data to output (core assessment) in TAF:

---

<!-- GitHub Markdown requires empty line after </summary> to render `code` -->
<!-- Also, `code` is not rendered in <summary> headings -->

1: **Get model to run**

<details><summary>Contact assessment coordinator</summary>

> Well, unless you *are* the assessment coordinator :)

</details>

<details><summary>Get files (data, model) and earlier reports</summary>

> Files might be found in the Sharepoint `Data` folder.<br>
> Earlier WG reports can be found online.

</details>

<details><summary>Run model</summary>

> Being able to run the assessment on a different computer is an important
> milestone in making the analysis reproducible.

</details>

<br>

2: **Examine the analysis**

<details><summary>Check that data and results resemble earlier reports</summary>

> This is a good time to<br>
> (a) view the input & output files, and<br>
> (b) open the last WG report - especially the table section<br>
> Do the tables in (a) and (b) look similar?

</details>

<details><summary>Explore input: data types, files, etc.</summary>

> What kinds of data are used in this assessment, perhaps more than one
> survey?<br>
> Are some data tables in the report not in the model input, or vice versa?<br>
> Is it easy to find out which input files the model requires?<br>
> Are the model settings stored in a separate file?

</details>

<details><summary>Identify minimal set of files to run the assessment</summary>

> In general, TAF should only contain files that are absolutely necessary to run
> the final assessment.<br>
> All other files are probably best stored outside of TAF.<br>
> What is the smallest set of files required to run the final assessment on
> another computer?

</details>

<br>

3: **Data script**

<details><summary>Read data files</summary>

> The easiest way to import data into R depends on the data file format:<br>
> \- simple text files can often be imported using base functions like
> `read.table`<br>
> \- specific file formats can be imported using packages like `stockassessment`
> or `FLCore`

</details>

<details><summary>Preprocess data</summary>

> Some preprocessing of data often occurs before they are fed into a model:<br>
> \- years or ages might be excluded from the analysis<br>
> \- ages might be aggregated into a plus group<br>
> \- survey indices might be combined, the current year's weights predicted,
> etc.<br>
> The data should preferably start in disaggregated form (see 'Mission Y'
> below).

</details>

<details><summary>Write TAF files</summary>

> Data that are used in the assessment model should be made available as data
> files in TAF format.<br>
> The icesTAF package provides the function `write.csv` for this purpose.<br>
> The resulting files will be visible to the public online, after the official
> ICES advice is released.

</details>

<br>

4: **Input and model scripts**

<details><summary>Prepare model input</summary>

> In the best case, `input.R` reads TAF data files and creates the model input
> from that.<br>
> \- this guarantees that the TAF data files are indeed the data that the model
> uses<br>
> \- when this is not practical, it should still be easy to see from `data.R`,
> `input.R` and `model.R` that the TAF data files correspond to the model
> input<br>
> Next line

</details>

<details><summary>Run model</summary>

>

</details>

<details><summary>Document dependencies, especially non-CRAN packages</summary>

>

</details>

<br>

5: **Output script**

<details><summary>Extract results of interest, e.g. N and F at age</summary>

>

</details>

<details><summary>Construct summary table: Rec, SSB, Fbar, etc.</summary>

>

</details>

<details><summary>Write TAF files</summary>

>

</details>

<br>

## Ways to extend the 'core assessment'

<br>

Mission X: **Report script**

<details>
<summary>Produce formatted tables that look like earlier reports</summary>

>

</details>

<details><summary>Produce figures that look like earlier reports</summary>

>

</details>

<br>

Mission Y: **Start from disaggregated data**

<details><summary>Get data files with disaggregated data</summary>

>

</details>

<details><summary>Revise data.R to read those files</summary>

>

</details>

<details>
<summary>Filter, smooth, combine, etc. to create aggregated data</summary>

>

</details>


<br>

Mission Z: **TAF forecast**

<details>
<summary>If forecast is simple, script it in report_forecast.R</summary>

>

</details>

<details>
<summary>If complex, create separate analysis: data, input, etc.</summary>

>

</details>

<br>

---

See also:
[Tutorial](https://github.com/ices-taf/doc/blob/master/tutorial-1/README.md)
