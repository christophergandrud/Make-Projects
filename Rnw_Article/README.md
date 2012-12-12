# README `ArticleCreator.sh`
## Christopher Gandrud
## Updated: 12 December 2012

This file explains how to use the `ArticleCreator.sh` bash shell script.

---

# Work in progress. Currently non-executable.

## About

The simple script `ArticleCreator.sh` automatically creates a [knitr](http://yihui.name/knitr/) LaTeX article class document.

The script then creates a basic `.Rnw` *knitr* article class document, complete with header, footer and BibTeX file. The header includes packages that I tend to use in my articles including:

- `fullpage`
- `natbib`
- `setspace`
- `xcolor`
- `hyperref` (including a colour set up that I like)
- `dcolumn`
- `url`
- `tikz`
- `todonotes`
- `inputenc`

## Components
The Article Creator consists of a shell script file `ArticleCreator.sh` and a file called `HeaderFooter.txt`. It contains the generic header footer material.This folder also has a file called `README.Rmd`, used to create the explanation you are currently reading.

## Set Up & Run
Before running the shell script `ArticleCreator.sh` on your Linux or Mac machine you must give it the correct permissions. Set your working directory (using the `cd` command) to the folder where `ArticleCreator.sh` is located. On my computer it is in `/git_repositories/MakeProjects/Rnw_Article/`


```bash
cd /git_repositories/MakeProjects/Rnw_Article/
```


Now change the permissions so that you can run the shell script:


```bash
chmod 755 ArticleCreator.sh
```


Make sure the file has the correct permissions like this:


```bash
ls -l ArticleCreator.sh
```

```
## -rwxr-xr-x@ 1 christophergandrud  admin  759 12 Dec 10:51 ArticleCreator.sh
```


Everything looks fine.

To run the shell script type:

```bash
./ArticleCreator.sh
```


When you run the script you will be given a number of prompts prompts:


```bash
Do you want to make a Article or Seminar?
Please enter the lecture number you want to compile.
```


Simply type in "Lecture" or "Seminar" depending on what you would like to create after the first prompt. Obviously type the number you want to give the slideshow after the second.
