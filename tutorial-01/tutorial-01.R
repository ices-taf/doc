## R script to convert tutorial-01.Rmd -> tutorial-01.md

## To get TOC and numbered sections, just create HTML and call it .md
rmarkdown::render("tutorial-01.Rmd", output_file="tutorial-01.md")

## Comment out doctype and title to make GitHub Markdown happy
md <- readLines("tutorial-01.md")
md[md=="<!DOCTYPE html>"] <- "<!-- <!DOCTYPE html> -->"
md <- gsub("(<title>.*</title>)", "<!-- \\1 -->", md)
writeLines(md, "tutorial-01.md")
