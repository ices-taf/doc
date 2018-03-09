## R script to convert README.Rmd -> README.md

## To get TOC and numbered sections, just create HTML and call it .md
rmarkdown::render("README.Rmd", output_file="README.md")

## Comment out doctype and title to make GitHub Markdown happy
md <- readLines("README.md")
md[md=="<!DOCTYPE html>"] <- "<!-- <!DOCTYPE html> -->"
md <- gsub("(<title>.*</title>)", "<!-- \\1 -->", md)
writeLines(md, "README.md")
