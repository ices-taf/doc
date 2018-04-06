# Procedure to get an assessment into TAF

To make the task easier, and to measure the progress towards the goal, we divide
it into steps. The procedure below applies equally to assessment coordinators
and the TAF support team.

Five steps to script the analysis from data to output (core assessment) in TAF:

<br>

<!-- GitHub Markdown requires empty line after </summary> to render `code` -->
<!-- Also, `code` is not rendered in <summary> headings -->

1: **Get model to run**

<details><summary>Contact assessment coordinator</summary>

  Well, unless you *are* the assessment coordinator :)

</details>

<details><summary>Get files (data, model) and earlier reports</summary>

  Files might be found in the Sharepoint `Data` folder.<br>
  Earlier WG reports can be found online.

</details>

<details><summary>Run model</summary>

  Being able to run the assessment on a different computer is an important
  milestone in making the analysis reproducible.

</details>

<br>

2: **Examine the analysis**

<details><summary>Check that data and results resemble earlier reports</summary>

  This is a good time to<br>
  (a) view the input & output files, and<br>
  (b) open the last WG report - especially the table section.<br>
  Do the tables in (a) and (b) look similar?

</details>

<details><summary>Explore input: data types, files, etc.</summary>

  What kinds of data are used in this assessment, perhaps more than one
  survey?<br>
  Are some data tables in the report not in the model input, or vice versa?<br>
  Is it easy to find out which input files the model requires?<br>
  Are the model settings stored in a separate file?

</details>

<details><summary>Identify minimal set of files to run the assessment</summary>

  In general, TAF should only contain files that are absolutely necessary to run
  the final assessment. All other files are probably best stored outside of
  TAF.<br>
  What is the smallest set of files that are required to run the final
  assessment on another computer?

</details>

<br>

3: **Data script**

<details><summary>Read data files</summary>

  1-800-icestaf
</details>

<details><summary>Preprocess data</summary>

  `1-800-icestaf`
</details>

<details><summary>Write TAF files</summary>

  ```
  1-800-icestaf
  ```
</details>

<br>

4: **Input and model scripts**

<details><summary>Prepare model input</summary>

  1-800-icestaf
</details>

<details><summary>Run model</summary>

  `1-800-icestaf`
</details>

<details><summary>Document dependencies, especially non-CRAN packages</summary>

  ```
  1-800-icestaf
  ```
</details>

<br>

5: **Output script**

<details><summary>Extract results of interest, e.g. N and F at age</summary>

  1-800-icestaf
</details>

<details><summary>Construct summary table: Rec, SSB, Fbar, etc.</summary>

  `1-800-icestaf`
</details>

<details><summary>Write TAF files</summary>

  ```
  1-800-icestaf
  ```
</details>

<br>

## Ways to extend the 'core assessment'

<br>

Mission X: **Report script**

<details>
<summary>Produce formatted tables that look like earlier reports</summary>

  `1-800-icestaf`
</details>

<details><summary>Produce figures that look like earlier reports</summary>

  `1-800-icestaf`
</details>

<br>

Mission Y: **Start from disaggregated data**

<details><summary>Get data files with disaggregated data</summary>

  `1-800-icestaf`
</details>

<details><summary>Revise data.R to read those files</summary>

  `1-800-icestaf`
</details>

<details>
<summary>Filter, smooth, combine, etc. to create aggregated data</summary>

  `1-800-icestaf`
</details>


<br>

Mission Z: **TAF forecast**

<details>
<summary>If forecast is simple, script it in report_forecast.R</summary>

  `1-800-icestaf`
</details>

<details>
<summary>If complex, create separate analysis: data, input, etc.</summary>

  `1-800-icestaf`
</details>

<br>

<hr>

See also:
[Tutorial](https://github.com/ices-taf/doc/blob/master/tutorial-1/README.md)
