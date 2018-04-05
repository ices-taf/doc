# Procedure to get an assessment into TAF

See also:
[Tutorial](https://github.com/ices-taf/doc/blob/master/tutorial-1/README.md)

To make the task easier, and to measure the progress towards the goal, we divide
it into many small steps. The procedure below applies equally to assessment
coordinators and the TAF support team, except for the 1st step :cat:

Fifteen steps to script the analysis from *data* to *output* (core assessment)
in TAF:

<br>

Part A: **Get model to run**

1. Contact assessment coordinator
2. Get files (data, model) and earlier reports
3. Run model

<br>

Part B: **Examine the analysis**

4. Check that data and results resemble earlier reports
5. Explore input: data types, files, etc.
6. Identify minimal set of files to run the assessment

<br>

Part C: **Data script**

7. Read data files
8. Preprocess data
9. Write TAF files

<br>

Part D: **Input and model scripts**

10. Prepare model input
11. Run model
12. Document dependencies, especially non-CRAN packages

<br>

Part E: **Output script**

13. Get N at age, F at age
14. Construct summary table: Rec, SSB, Fbar, etc.
15. Write TAF files

<br>

## Ways to extend the 'core assessment'

<br>

Part X: **Start from disaggregated data**

- Get data files with disaggregated data
- Revise `data.R` to read those files
- Filter, smooth, aggregate, etc. to create aggregated data

<br>

Part Y: **Report script**

- Produce formatted tables that look like earlier reports
- Produce figures that look like earlier reports

<br>

Part Z: **TAF forecast**

- If forecast is simple, script it in `report_forecast.R`
- If complex, create separate analysis: data, input, etc.
