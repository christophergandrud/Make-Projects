# README `LectureCreator.sh`
## Christopher Gandrud
## Updated: 17 September

This file explanation how to use the `LectureCreator.sh`.

---

## About

The simple bash shell script `LectureCreator.sh` automatically creates a [knitr](http://yihui.name/knitr/) [Beamer slideshow](http://en.wikipedia.org/wiki/Beamer_(LaTeX). 

You define whether the slideshow should be called a *Lecture* or a *Seminar*. You also decide what number the file should have.

The script then creates a basic `.Rnw` *knitr* beamer slide show, complete with header, footer, and necessary style files.

I use this script to create lecture and seminar slide shows for an [introductory applied stats class](http://christophergandrud.github.com/Introduction_to_Statistics_and_Data_Analysis_Yonsei/) that I teach.

## Components
The Lecture Creator consists of a shell script file `LectureCreator.sh` and a folder called `CommonFiles`. There are three files in the `CommonFiles` folder. These are the style files and the basic beamer slide show file.

## Set Up & Run
Before running the shell script `LectureCreator.sh` on your Linux or Mac machine you must give it the correct permissions. Set your working directory (using `cd`) to the folder where `LectureCreator.sh`. On my computer it is in `/git_repositories/MakeProjects/Rnw_Lecture/`


```bash
cd /git_repositories/MakeProjects/Rnw_Lecture/
```


Now change the permissions so that you can run the shell script:


```bash
chmod 755 LectureCreator.sh
```


Make sure you the file has the correct permissions like this:


```bash
ls -l LectureCreator.sh
```

```
-rwxr-xr-x@ 1 christophergandrud  admin  749 Sep 17 17:34 LectureCreator.sh
```


Everything looks fine.

To run the shell script type:

```bash
./LectureCreator.sh
```


When you run the script you will be given two prompts:


```bash
Do you want to make a Lecture or Seminar?
Please enter the lecture number you want to compile.
```


Simply type in "Lecture" or "Seminar" depending on what you would like to create and the number.
