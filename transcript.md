# TAF workflow

In this video we'll be looking at the TAF workflow, which is very much centered
on R scripts that are run sequentially. They structure the stock assessment into
separate steps and what we'll end up with is clean organized and reproducible
assessments.

So the aim of TAF is to implement a framework to organize data, methods, and
results used in ICES assessments, so they are easy to find and rerun later with
new data. If you look at the diagram showing the TAF workflow and the different
components, it's about going from data to analysis and results.

We start with getting data from ICES databases and other data sources, and the
first step in the data folder is to gather the data, and to filter and
pre-process the data that will finally be used in the assessment. So that is one
of the major aims of TAF is to document and script this process of preparing the
data. Describing where they came from and what was done to them before they were
entered in the assessment model.

Moving on to the input folder the task there is to convert the data from the
most general format, crosstab year by age usually, into the model specific
format. So that will depend on the model: it can be one big text file, or an R
list, or a number of input text files, whatever the model will read. The model
folder is about running the model. The model will be coming from either a
toolbox of commonly used models or any model can be used within this folder.

The final step, output, is where we convert the model specific output into more
general text files, things like numbers of age or fishing mortalities, SSB,
recruitment, and so on. The final step, then, is to upload those results into
the ICES databases: the stock assessment graphs, tables and so forth.

## R scripts

Behind each of those folders, `data`, `input`, `model`, and `output`, there is
an R script that governs what takes place. So let's take a look at those scripts
in more detail.

The first one is `data.R`. Again, that is where we pre-process the data and
write out what we call TAF data tables. They're very simple crosstab text files,
comma separated values. The next step is `input.R`, where we convert those data
to the model specific format, writing out the model input files.

In `model.R` we run the analysis, often just invoking a shell command or an R
package to run the model and the results will be written out as output files.
Those output files will often contain information about likelihoods or
gradients, and all sorts of extra information we don't really need. So we
extract the results of interest in `output.R`, things like numbers at age and
fishing mortalities, and we write them out as text files.

Other scripts that we will be working with are `report.R`, which is an optional
script where scientists can prepare any plots and tables that they are going to
put in the report, and finally there's `upload.R`, a very short script
describing the data that are uploaded into the TAF system.

## North Sea spotted ray

So what we're going to be doing for the rest of the video is to go through the
actual analysis behind the 2015 ICES advice for North Sea spotted ray. The R
scripts can be found on GitHub. In the address you can see
[ices-taf/2015_rjm-347d](https://github.com/ices-taf/2015_rjm-347d) and if you
want to work along while you watch the video, you can download these from GitHub
and work with them on your own computer.

### data.R

So let's just dive into `data.R`. At the top of the script we have comments
reminding us what is the purpose of the script: to pre-process the data and to
write out the TAF data tables. In the comment we also write the state before the
script is run and after the script is run, in terms of the files and where they
are. So we start with `catch.csv` and `surveys_all.csv` on the TAF database, and
after the script is run we will have `catch.csv`, `summary.csv`, `survey.csv`,
all found in a new folder called `data`.

We start by loading the `icesTAF` package and create an empty directory. We next
download the data, the catch and the survey, and we start pre-processing the
data. We select the years of interest and the surveys of interest. We scale the
surveys and create a combined index, as the average of the three surveys, and
this is the catch data. Very short history of the catches for this fishery, and
this is the survey data. We have selected the years and those three surveys, but
importantly we have also created a combined index and that is the actual input
data for the assessment. We finalize the tables and we write them out to the
`data` directory.

So what we have done is to create a `data` folder containing the data that will
be used in the assessment: `catch.csv`, `summary.csv`, and `survey.csv`. In the
`catch.csv` we have the catch history, in the summary we have combined the catch
history with the index that will be used, and the survey documents how the index
is calculated.

### input.R

The next script that is run is `input.R`. It is a short script, where we will
convert the data to model format and write out the model input files. In other
words, we will start with catch and survey in the data folder, but after the
script is run we will have `input.RData` in a folder called input. So we run
those commands, again loading the `icesTAF` package, creating the directory. We
simply fetch the catch and the survey data frames, and save them together in one
file, `input.RData`.

### model.R

The third script `model.R` runs the model and the results will be written out as
`dls.txt`, inside the `model` folder. Now it's not enough just to have the
`icesTAF` package. We also fetch a package called `icesAdvice`, containing the
function that we'll be using to run the analysis, `DLS3.2`.

So we start by creating an empty folder, we get the data from the previous step,
we apply the DLS method 3.2, and the results are found in the `model` folder as
`dls.txt`. It outlines the computations behind the advice. The advice is 291
tons, and it is coming from the last advice 243, and some series of survey
indices. On average they've been going up by 43%, and the DLS 3.2 rule is that
we're not going to increase the advice by 43%, but rather by maximum of 20%, so
the advice is 291.

### output.R

The `output.R` script is about extracting those results of interest and writing
out the TAF output tables. We're going to read in the `dls.txt`, and we're
actually just going to copy it to the `output` folder. In more complicated stock
assessments this would of course take more steps, but here we just copy between
`model` into `output`.

### report.R

Finally, in the `report.R`, we're going to prepare plots and tables that could
be included in the stock assessment report. Taking the summary from the `data`
step, we're just going to be plotting the survey as a PNG file. So we load the
`icesTAF` package, we create an empty directory `report`, we read in the
summary, and we create the plot, and we also write out the summary table, but
this time rounding the catch and the index values, to make it look better in a
report.

Inside the `report` folder, we now have `summary.csv` and `survey.png`. The
survey looks simple enough, ready to be pasted into the report, and the summary
rounds the indices, so that they will look better in a report, maybe with three
decimals or so. So you would just copy this into the report, essentially.

## ICES packages

In the R scripts we've been using some commands that are outside of base R.
We've been using some ICES packages. So let's take a look at, for example,
`DLS3.2`. The help page describes it as a function to apply ICES method 3.2, and
it has some good guidelines and references on how to use that function.

We've also been using some R functions from the `icesTAF` package. If we just
take a look at the main help page for the `icesTAF` package, it lists all the
functions by their groups. So some of them we've been using to read and write
files, we've been using `cp` and `mkdir` to manipulate files. We used `tafpng`
to open a PNG graphics device, to draw an image and write it in PNG format.

Most of the `icesTAF` functions are very short and simple, but they're simply
there to make the scripts look more readable. They're convenient shorthand
functions, to get to the point without some boilerplate code that is needed. For
example, in the `report.R` we were using `tafpng` like that, so it uses the
suggested image size and so forth.

## sourceTAF & sourceAll

We also see in the help page some functions that we will now take a look at, to
run the scripts. There are convenient functions for that as well: `sourceTAF` is
to run a single script and `sourceAll` is to run all of them. So let's take a
look at how we can use those, instead of running line by line like we were
doing.

We can start from scratch with nothing in here. We can run them one by one:
`sourceTAF("data.R")`. Very similar to the base R function to source. It adds
some sort of helpful message, with the time and what it's doing. But more
importantly, we can run all of them: `sourceAll()`. They run blazing fast, it's
`data.R`, `input.R`, `model.R`, `output.R`, and `report.R`. That is how
assessment will be run on TAF once they're uploaded, using `sourceAll`.

## Summary

So what we have learned in this video is about the overall TAF workflow. We used
as an example the North Sea spotted ray, as a fully scripted analysis. We also
have on the GitHub TAF page other examples that can be studied in the same way.
That is Icelandic haddock, North Sea cod, and Eastern Channel plaice. They are
all age based assessments. The [Eastern Channel
plaice](https://github.com/ices-taf/2016_ple-eche) uses the FLR suite of R
packages, and the [North Sea cod](https://github.com/ices-taf/2016_cod-347d) is
a SAM model. The [Icelandic haddock](https://github.com/ices-taf/2015_had-iceg)
is an AD Model Builder age based model, and we'll be adding more examples there
as we go.

In a future video, we will be covering the TAF web interface, where assessments
can be browsed, run, and modified, and how web services can be used to upload,
download, and run models.
