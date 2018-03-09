<!-- <!DOCTYPE html> -->

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="generator" content="pandoc" />

<meta name="viewport" content="width=device-width, initial-scale=1">



<!-- <title>TAF tutorial 1: Simple assessment</title> -->






<link href="data:text/css,body%20%7B%0A%20%20background%2Dcolor%3A%20%23fff%3B%0A%20%20margin%3A%201em%20auto%3B%0A%20%20max%2Dwidth%3A%20700px%3B%0A%20%20overflow%3A%20visible%3B%0A%20%20padding%2Dleft%3A%202em%3B%0A%20%20padding%2Dright%3A%202em%3B%0A%20%20font%2Dfamily%3A%20%22Open%20Sans%22%2C%20%22Helvetica%20Neue%22%2C%20Helvetica%2C%20Arial%2C%20sans%2Dserif%3B%0A%20%20font%2Dsize%3A%2014px%3B%0A%20%20line%2Dheight%3A%201%2E35%3B%0A%7D%0A%0A%23header%20%7B%0A%20%20text%2Dalign%3A%20center%3B%0A%7D%0A%0A%23TOC%20%7B%0A%20%20clear%3A%20both%3B%0A%20%20margin%3A%200%200%2010px%2010px%3B%0A%20%20padding%3A%204px%3B%0A%20%20width%3A%20400px%3B%0A%20%20border%3A%201px%20solid%20%23CCCCCC%3B%0A%20%20border%2Dradius%3A%205px%3B%0A%0A%20%20background%2Dcolor%3A%20%23f6f6f6%3B%0A%20%20font%2Dsize%3A%2013px%3B%0A%20%20line%2Dheight%3A%201%2E3%3B%0A%7D%0A%20%20%23TOC%20%2Etoctitle%20%7B%0A%20%20%20%20font%2Dweight%3A%20bold%3B%0A%20%20%20%20font%2Dsize%3A%2015px%3B%0A%20%20%20%20margin%2Dleft%3A%205px%3B%0A%20%20%7D%0A%0A%20%20%23TOC%20ul%20%7B%0A%20%20%20%20padding%2Dleft%3A%2040px%3B%0A%20%20%20%20margin%2Dleft%3A%20%2D1%2E5em%3B%0A%20%20%20%20margin%2Dtop%3A%205px%3B%0A%20%20%20%20margin%2Dbottom%3A%205px%3B%0A%20%20%7D%0A%20%20%23TOC%20ul%20ul%20%7B%0A%20%20%20%20margin%2Dleft%3A%20%2D2em%3B%0A%20%20%7D%0A%20%20%23TOC%20li%20%7B%0A%20%20%20%20line%2Dheight%3A%2016px%3B%0A%20%20%7D%0A%0Atable%20%7B%0A%20%20margin%3A%201em%20auto%3B%0A%20%20border%2Dwidth%3A%201px%3B%0A%20%20border%2Dcolor%3A%20%23DDDDDD%3B%0A%20%20border%2Dstyle%3A%20outset%3B%0A%20%20border%2Dcollapse%3A%20collapse%3B%0A%7D%0Atable%20th%20%7B%0A%20%20border%2Dwidth%3A%202px%3B%0A%20%20padding%3A%205px%3B%0A%20%20border%2Dstyle%3A%20inset%3B%0A%7D%0Atable%20td%20%7B%0A%20%20border%2Dwidth%3A%201px%3B%0A%20%20border%2Dstyle%3A%20inset%3B%0A%20%20line%2Dheight%3A%2018px%3B%0A%20%20padding%3A%205px%205px%3B%0A%7D%0Atable%2C%20table%20th%2C%20table%20td%20%7B%0A%20%20border%2Dleft%2Dstyle%3A%20none%3B%0A%20%20border%2Dright%2Dstyle%3A%20none%3B%0A%7D%0Atable%20thead%2C%20table%20tr%2Eeven%20%7B%0A%20%20background%2Dcolor%3A%20%23f7f7f7%3B%0A%7D%0A%0Ap%20%7B%0A%20%20margin%3A%200%2E5em%200%3B%0A%7D%0A%0Ablockquote%20%7B%0A%20%20background%2Dcolor%3A%20%23f6f6f6%3B%0A%20%20padding%3A%200%2E25em%200%2E75em%3B%0A%7D%0A%0Ahr%20%7B%0A%20%20border%2Dstyle%3A%20solid%3B%0A%20%20border%3A%20none%3B%0A%20%20border%2Dtop%3A%201px%20solid%20%23777%3B%0A%20%20margin%3A%2028px%200%3B%0A%7D%0A%0Adl%20%7B%0A%20%20margin%2Dleft%3A%200%3B%0A%7D%0A%20%20dl%20dd%20%7B%0A%20%20%20%20margin%2Dbottom%3A%2013px%3B%0A%20%20%20%20margin%2Dleft%3A%2013px%3B%0A%20%20%7D%0A%20%20dl%20dt%20%7B%0A%20%20%20%20font%2Dweight%3A%20bold%3B%0A%20%20%7D%0A%0Aul%20%7B%0A%20%20margin%2Dtop%3A%200%3B%0A%7D%0A%20%20ul%20li%20%7B%0A%20%20%20%20list%2Dstyle%3A%20circle%20outside%3B%0A%20%20%7D%0A%20%20ul%20ul%20%7B%0A%20%20%20%20margin%2Dbottom%3A%200%3B%0A%20%20%7D%0A%0Apre%2C%20code%20%7B%0A%20%20background%2Dcolor%3A%20%23f7f7f7%3B%0A%20%20border%2Dradius%3A%203px%3B%0A%20%20color%3A%20%23333%3B%0A%20%20white%2Dspace%3A%20pre%2Dwrap%3B%20%20%20%20%2F%2A%20Wrap%20long%20lines%20%2A%2F%0A%7D%0Apre%20%7B%0A%20%20border%2Dradius%3A%203px%3B%0A%20%20margin%3A%205px%200px%2010px%200px%3B%0A%20%20padding%3A%2010px%3B%0A%7D%0Apre%3Anot%28%5Bclass%5D%29%20%7B%0A%20%20background%2Dcolor%3A%20%23f7f7f7%3B%0A%7D%0A%0Acode%20%7B%0A%20%20font%2Dfamily%3A%20Consolas%2C%20Monaco%2C%20%27Courier%20New%27%2C%20monospace%3B%0A%20%20font%2Dsize%3A%2085%25%3B%0A%7D%0Ap%20%3E%20code%2C%20li%20%3E%20code%20%7B%0A%20%20padding%3A%202px%200px%3B%0A%7D%0A%0Adiv%2Efigure%20%7B%0A%20%20text%2Dalign%3A%20center%3B%0A%7D%0Aimg%20%7B%0A%20%20background%2Dcolor%3A%20%23FFFFFF%3B%0A%20%20padding%3A%202px%3B%0A%20%20border%3A%201px%20solid%20%23DDDDDD%3B%0A%20%20border%2Dradius%3A%203px%3B%0A%20%20border%3A%201px%20solid%20%23CCCCCC%3B%0A%20%20margin%3A%200%205px%3B%0A%7D%0A%0Ah1%20%7B%0A%20%20margin%2Dtop%3A%200%3B%0A%20%20font%2Dsize%3A%2035px%3B%0A%20%20line%2Dheight%3A%2040px%3B%0A%7D%0A%0Ah2%20%7B%0A%20%20border%2Dbottom%3A%204px%20solid%20%23f7f7f7%3B%0A%20%20padding%2Dtop%3A%2010px%3B%0A%20%20padding%2Dbottom%3A%202px%3B%0A%20%20font%2Dsize%3A%20145%25%3B%0A%7D%0A%0Ah3%20%7B%0A%20%20border%2Dbottom%3A%202px%20solid%20%23f7f7f7%3B%0A%20%20padding%2Dtop%3A%2010px%3B%0A%20%20font%2Dsize%3A%20120%25%3B%0A%7D%0A%0Ah4%20%7B%0A%20%20border%2Dbottom%3A%201px%20solid%20%23f7f7f7%3B%0A%20%20margin%2Dleft%3A%208px%3B%0A%20%20font%2Dsize%3A%20105%25%3B%0A%7D%0A%0Ah5%2C%20h6%20%7B%0A%20%20border%2Dbottom%3A%201px%20solid%20%23ccc%3B%0A%20%20font%2Dsize%3A%20105%25%3B%0A%7D%0A%0Aa%20%7B%0A%20%20color%3A%20%230033dd%3B%0A%20%20text%2Ddecoration%3A%20none%3B%0A%7D%0A%20%20a%3Ahover%20%7B%0A%20%20%20%20color%3A%20%236666ff%3B%20%7D%0A%20%20a%3Avisited%20%7B%0A%20%20%20%20color%3A%20%23800080%3B%20%7D%0A%20%20a%3Avisited%3Ahover%20%7B%0A%20%20%20%20color%3A%20%23BB00BB%3B%20%7D%0A%20%20a%5Bhref%5E%3D%22http%3A%22%5D%20%7B%0A%20%20%20%20text%2Ddecoration%3A%20underline%3B%20%7D%0A%20%20a%5Bhref%5E%3D%22https%3A%22%5D%20%7B%0A%20%20%20%20text%2Ddecoration%3A%20underline%3B%20%7D%0A%0A%2F%2A%20Class%20described%20in%20https%3A%2F%2Fbenjeffrey%2Ecom%2Fposts%2Fpandoc%2Dsyntax%2Dhighlighting%2Dcss%0A%20%20%20Colours%20from%20https%3A%2F%2Fgist%2Egithub%2Ecom%2Frobsimmons%2F1172277%20%2A%2F%0A%0Acode%20%3E%20span%2Ekw%20%7B%20color%3A%20%23555%3B%20font%2Dweight%3A%20bold%3B%20%7D%20%2F%2A%20Keyword%20%2A%2F%0Acode%20%3E%20span%2Edt%20%7B%20color%3A%20%23902000%3B%20%7D%20%2F%2A%20DataType%20%2A%2F%0Acode%20%3E%20span%2Edv%20%7B%20color%3A%20%2340a070%3B%20%7D%20%2F%2A%20DecVal%20%28decimal%20values%29%20%2A%2F%0Acode%20%3E%20span%2Ebn%20%7B%20color%3A%20%23d14%3B%20%7D%20%2F%2A%20BaseN%20%2A%2F%0Acode%20%3E%20span%2Efl%20%7B%20color%3A%20%23d14%3B%20%7D%20%2F%2A%20Float%20%2A%2F%0Acode%20%3E%20span%2Ech%20%7B%20color%3A%20%23d14%3B%20%7D%20%2F%2A%20Char%20%2A%2F%0Acode%20%3E%20span%2Est%20%7B%20color%3A%20%23d14%3B%20%7D%20%2F%2A%20String%20%2A%2F%0Acode%20%3E%20span%2Eco%20%7B%20color%3A%20%23888888%3B%20font%2Dstyle%3A%20italic%3B%20%7D%20%2F%2A%20Comment%20%2A%2F%0Acode%20%3E%20span%2Eot%20%7B%20color%3A%20%23007020%3B%20%7D%20%2F%2A%20OtherToken%20%2A%2F%0Acode%20%3E%20span%2Eal%20%7B%20color%3A%20%23ff0000%3B%20font%2Dweight%3A%20bold%3B%20%7D%20%2F%2A%20AlertToken%20%2A%2F%0Acode%20%3E%20span%2Efu%20%7B%20color%3A%20%23900%3B%20font%2Dweight%3A%20bold%3B%20%7D%20%2F%2A%20Function%20calls%20%2A%2F%20%0Acode%20%3E%20span%2Eer%20%7B%20color%3A%20%23a61717%3B%20background%2Dcolor%3A%20%23e3d2d2%3B%20%7D%20%2F%2A%20ErrorTok%20%2A%2F%0A%0A" rel="stylesheet" type="text/css" />

</head>

<body>




<h1 class="title toc-ignore">TAF tutorial 1: Simple assessment</h1>


<div id="TOC">
<ul>
<li><a href="#taf-workflow"><span class="toc-section-number">1</span> TAF workflow</a><ul>
<li><a href="#r-scripts"><span class="toc-section-number">1.1</span> R scripts</a></li>
<li><a href="#north-sea-spotted-ray"><span class="toc-section-number">1.2</span> North Sea spotted ray</a><ul>
<li><a href="#data.r"><span class="toc-section-number">1.2.1</span> data.R</a></li>
<li><a href="#input.r"><span class="toc-section-number">1.2.2</span> input.R</a></li>
<li><a href="#model.r"><span class="toc-section-number">1.2.3</span> model.R</a></li>
<li><a href="#output.r"><span class="toc-section-number">1.2.4</span> output.R</a></li>
<li><a href="#report.r"><span class="toc-section-number">1.2.5</span> report.R</a></li>
</ul></li>
<li><a href="#ices-packages"><span class="toc-section-number">1.3</span> ICES packages</a></li>
<li><a href="#sourcetaf-sourceall"><span class="toc-section-number">1.4</span> sourceTAF &amp; sourceAll</a></li>
<li><a href="#summary"><span class="toc-section-number">1.5</span> Summary</a></li>
</ul></li>
</ul>
</div>

<p><br></p>
<div id="taf-workflow" class="section level1">
<h1><span class="header-section-number">1</span> TAF workflow</h1>
<p>In this video we’ll be looking at the TAF workflow, which is very much centered on R scripts that are run sequentially. They structure the stock assessment into separate steps, and what we’ll end up with is clean organized and reproducible assessments.</p>
<p>The aim of TAF is to implement a framework to organize <em>data</em>, <em>methods</em>, and <em>results</em> used in ICES assessments, so they are easy to find and rerun later with new data. If you look at the diagram showing the TAF workflow and the different components, it’s about going from data to analysis and results.</p>
<p>We start with getting data from ICES databases and other data sources. The first step in the <code>data</code> folder is to gather the data, and to filter and preprocess the data that will finally be used in the assessment. That is one of the major aims of TAF, to document and script this process of preparing the data. Describing where they came from and what was done to them, before they were entered in the assessment model.</p>
<p>Moving on to the <code>input</code> folder, the task there is to convert the data from the most general format, crosstab year by age usually, into the model-specific format. That will depend on the model: it can be one big text file, an R list, or a number of input text files, whatever the model will read. The <code>model</code> folder is about running the model. The model will be coming from either a toolbox of commonly used models, or any model can be used within this folder.</p>
<p>The final step, <code>output</code>, is where we convert the model-specific output into more general text files, things like numbers at age or fishing mortalities, SSB, recruitment, and so on. The final step is to upload those results into the ICES databases: the stock assessment graphs, tables and so forth.</p>
<div id="r-scripts" class="section level2">
<h2><span class="header-section-number">1.1</span> R scripts</h2>
<p>Behind each of those folders, <code>data</code>, <code>input</code>, <code>model</code>, and <code>output</code>, there is an R script that governs what takes place. Let’s take a look at those scripts in more detail.</p>
<p>The first one is <code>data.R</code>. That is where we preprocess the data and write out what we call TAF data tables. They’re very simple crosstab text files, comma separated values. The next step is <code>input.R</code>, where we convert those data to the model-specific format, writing out the model input files.</p>
<p>In <code>model.R</code> we run the analysis, often just invoking a shell command or an R package to run the model and the results will be written out as output files. Those output files will often contain information about likelihoods or gradients, and all sorts of extra information we don’t really need. So we extract the results of interest in <code>output.R</code>, things like numbers at age and fishing mortalities, and we write them out as text files.</p>
<p>Other scripts that we will be working with are <code>report.R</code>, which is an optional script where scientists can prepare any plots and tables that they are going to put in the report, and finally there’s <code>upload.R</code>, a very short script describing the data that are uploaded into the TAF system.</p>
</div>
<div id="north-sea-spotted-ray" class="section level2">
<h2><span class="header-section-number">1.2</span> North Sea spotted ray</h2>
<p>What we’re going to be doing for the rest of the video is to go through the actual analysis behind the 2015 ICES advice for North Sea spotted ray. The R scripts can be found on GitHub. In the address you can see <a href="https://github.com/ices-taf/2015_rjm-347d">ices-taf/2015_rjm-347d</a> and if you want to work along while you watch the video, you can download these from GitHub and work with them on your own computer.</p>
<div id="data.r" class="section level3">
<h3><span class="header-section-number">1.2.1</span> data.R</h3>
<p>Let’s just dive into <code>data.R</code>. At the top of the script we have comments reminding us what is the purpose of the script: to preprocess the data and to write out the TAF data tables. In the comment we also write the state before the script is run and after the script is run, in terms of the files and where they are. So we start with <code>catch.csv</code> and <code>surveys_all.csv</code> in the TAF database. After the script is run we will have <code>catch.csv</code>, <code>summary.csv</code>, <code>survey.csv</code>, all found in a new folder called <code>data</code>.</p>
<p>We start by loading the <code>icesTAF</code> package and create an empty directory. We next download the data, the catch and the survey, and we start preprocessing the data. We select the years of interest and the surveys of interest. We scale the surveys and create a combined index, as the average of the three surveys. This is the catch data, very short history of the catches for this fishery, and this is the survey data. We have selected the years and those three surveys, but importantly we have also created a combined index, and that is the actual input data for the assessment. We finalize the tables and we write them out to the <code>data</code> directory.</p>
<p>What we have done is to create a <code>data</code> folder containing the data that will be used in the assessment: <code>catch.csv</code>, <code>summary.csv</code>, and <code>survey.csv</code>. In the <code>catch.csv</code> we have the catch history, in the summary we have combined the catch history with the index that will be used, and the survey documents how the index is calculated.</p>
</div>
<div id="input.r" class="section level3">
<h3><span class="header-section-number">1.2.2</span> input.R</h3>
<p>The next script that is run is <code>input.R</code>. It is a short script, where we will convert the data to model format and write out the model input files. In other words, we will start with catch and survey in the data folder, but after the script is run we will have <code>input.RData</code> in a folder called <code>input</code>. So we run those commands, again loading the <code>icesTAF</code> package, creating the directory. We simply fetch the catch and the survey data frames, and save them together in one file, <code>input.RData</code>.</p>
</div>
<div id="model.r" class="section level3">
<h3><span class="header-section-number">1.2.3</span> model.R</h3>
<p>The third script <code>model.R</code> runs the model, and the results will be written out as <code>dls.txt</code> inside the <code>model</code> folder. Now it’s not enough just to have the <code>icesTAF</code> package. We also fetch a package called <code>icesAdvice</code>, containing the function that we’ll be using to run the analysis, <code>DLS3.2</code>.</p>
<p>We start by creating an empty folder, we get the data from the previous step, we apply the DLS method 3.2, and the results are found in the <code>model</code> folder as <code>dls.txt</code>. It outlines the computations behind the advice. The advice is 291 tons, and it is coming from the last advice 243, and some series of survey indices. On average they’ve been going up by 43%, and the DLS 3.2 rule is that we’re not going to increase the advice by 43%, but rather by maximum of 20%, so the advice is 291.</p>
</div>
<div id="output.r" class="section level3">
<h3><span class="header-section-number">1.2.4</span> output.R</h3>
<p>The <code>output.R</code> script is about extracting those results of interest, and writing out the TAF output tables. We’re going to read in the <code>dls.txt</code>, and we’re actually just going to copy it to the <code>output</code> folder. In more complicated stock assessments this would of course take more steps, but here we just copy between <code>model</code> and <code>output</code>.</p>
</div>
<div id="report.r" class="section level3">
<h3><span class="header-section-number">1.2.5</span> report.R</h3>
<p>Finally, in <code>report.R</code>, we’re going to prepare plots and tables that could be included in the stock assessment report. Taking the summary from the <code>data</code> step, we’re just going to be plotting the survey as a PNG file. So we load the <code>icesTAF</code> package, create an empty directory <code>report</code>, read in the summary, and create the plot. We also write out the summary table, but this time rounding the catch and the index values, to make it look better in a report.</p>
<p>Inside the <code>report</code> folder, we now have <code>summary.csv</code> and <code>survey.png</code>. The survey looks simple enough, ready to be pasted into the report. The summary rounds the indices, so that they will look better in a report, maybe with three decimals. So you would just copy this into the report, essentially.</p>
</div>
</div>
<div id="ices-packages" class="section level2">
<h2><span class="header-section-number">1.3</span> ICES packages</h2>
<p>In the R scripts we’ve been using some commands that are outside of base R. We’ve been using some ICES packages. Let’s take a look at, for example, <code>DLS3.2</code>. The help page describes it as a function to apply ICES method 3.2, and it has some good guidelines and references on how to use that function.</p>
<p>We’ve also been using some R functions from the <code>icesTAF</code> package. If we just take a look at the main help page for the <code>icesTAF</code> package, it lists all the functions by their groups. Some of them we’ve been using to read and write files, and we’ve been using <code>cp</code> and <code>mkdir</code> to manipulate files. We used <code>tafpng</code> to open a PNG graphics device, to draw an image and write it in PNG format.</p>
<p>Most of the <code>icesTAF</code> functions are very short and simple, but they’re simply there to make the scripts look more readable. They’re convenient shorthand functions, to get to the point without some boilerplate code that is needed. For example, in <code>report.R</code> we were using <code>tafpng</code> like that, so it uses the suggested image size and so forth.</p>
</div>
<div id="sourcetaf-sourceall" class="section level2">
<h2><span class="header-section-number">1.4</span> sourceTAF &amp; sourceAll</h2>
<p>We also see in the help page some functions that we will now take a look at, to run the scripts. There are convenient functions for that as well: <code>sourceTAF</code> is to run a single script and <code>sourceAll</code> is to run all of them. Let’s take a look at how we can use those, instead of running line by line like we were doing.</p>
<p>We can start from scratch with nothing in here. We can run them one by one, <code>sourceTAF(&quot;data.R&quot;)</code>, very similar to the base R function to source. It adds a helpful message, with the time and what it’s doing. But more importantly, we can run all of them with <code>sourceAll()</code>. They run blazing fast: <code>data.R</code>, <code>input.R</code>, <code>model.R</code>, <code>output.R</code>, and <code>report.R</code>. That is how assessment will be run on TAF once they’re uploaded, using <code>sourceAll</code>.</p>
</div>
<div id="summary" class="section level2">
<h2><span class="header-section-number">1.5</span> Summary</h2>
<p>What we have learned in this video is about the overall TAF workflow. We used as an example the North Sea spotted ray, as a fully scripted analysis. We also have on the GitHub TAF page other examples that can be studied in the same way. That is Icelandic haddock, North Sea cod, and Eastern Channel plaice.</p>
<p>They are all age-based assessments: the <a href="https://github.com/ices-taf/2016_ple-eche">Eastern Channel plaice</a> uses the FLR suite of R packages, and the <a href="https://github.com/ices-taf/2016_cod-347d">North Sea cod</a> is a SAM model. The <a href="https://github.com/ices-taf/2015_had-iceg">Icelandic haddock</a> is an AD Model Builder age-based model, and we’ll be adding more examples there as we go.</p>
<p>In a future video, we will be covering the TAF web interface, where assessments can be browsed, run, and modified, and how web services can be used to upload, download, and run models.</p>
</div>
</div>




</body>
</html>
