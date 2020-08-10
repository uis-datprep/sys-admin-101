# Linux System Administration 101

## Introduction
This is the course materials for Linux System Administration 101 in UiS. The purpose of this course is making student familiar working in the terminal environment and Linux system.

## Prerequisite
- Knowing basic terms in the Linux environment
- Knowing basic Linux commands

## Requirement
- Some sort of bash terminal
    - Included with Linux and macOS
    - For Windows there are three ways to do it:
      - Windows 10 can run Linux as a subsystem, see [here](https://docs.microsoft.com/en-us/windows/wsl/install-win10) for setup.
      - Install a virtual Linux machine, see [this guide](https://brb.nci.nih.gov/seqtools/installUbuntu.html) for installation.
      - (Not preferred, but at least useable for some tasks) [Git for windows](https://gitforwindows.org/) is a command line that emulates bash, but it can't do all commands.

## Tasks
In these tasks, the most important rule is working only in the terminal.

### Personal Task
#### Scenario
Nora received the compressed file from Olav. There is a file that Nora should run using bash script.
However, Olav forgot where he put this script. Moreover, it is very possible that he made some typo.
#### Task
- Download the compressed file using (`wget` or `curl`) from the shell.
- Extract the file `task.tar.bz2`.
- Find the location of shell script file called `run.sh`.
- Fix the problem (e.g, file name, permission) and successfully run the command `./run.sh`.

### Group Task 1
#### Scenario
Olav built the website for the group project. However, his teammate finds it challenging to deploy on their own machine. Therefore, Olav wants to make one bash file that can help his teammate to set up and run the website.
#### Task
- Download the folder called `group-task1`
- Complete the `start.sh` script.
- Run the script using the command `./start.sh`.
- In the new terminal and run `curl localhost:8080` and get the message. (You may have to change the port number)
- (bonus) Olav wants to run the website in the background using `screen`.

#### Hints/Notes
- Python version is 3.x
- Python flask
  - https://pythonspot.com/flask-hello-world/
- Python virtualenv
  - It should be able to run `virtualenv` command in your working environment.
  - If you are working with Linux server at UiS it will be fine.
  - https://virtualenv.pypa.io/en/latest/
  - https://flask.palletsprojects.com/en/1.1.x/installation/
- Screen
  - https://linux4one.com/how-to-use-linux-screen-command-with-examples/
  - https://serverfault.com/questions/578608/start-unix-screen-run-command-detach

### Group Task 2
#### Scenario
Professor Wiktorski needs to evaluate 100 students' assignments (while he was downloading the assignments, he accidentally removed the file format of the python file). There are four grades A, B, C, and Fail. He will test three cases. If the code passes all the three cases, the grade will be A (two = B, one = C, non=Fail). After finishing the evaluation, he needs to print the final report that consists of phone number and grade of each student. There is a phone number in the python file. However, each student uses a different format. Therefore he needs to make them be the same format. Moreover, each grade should be stored as a file in the students' folder.

#### Task
- Download the `group-task2` folder.
- Rename the file called `main` to `main.py`(complete the code in [`type.sh`](https://github.com/uis-prepcourse-2019/sys-admin-101/tree/master/group-task2/eval.sh) and use it).
- Complete the [`eval.sh`](https://github.com/uis-prepcourse-2019/sys-admin-101/tree/master/group-task2/eval.sh) file with the following order.
  1. Iterate all the folders (00 ... 99) and check if the file exists.
      - if exists, score the file.
      - if not, the grade is Fail.
  1. Test the `main.py` file by passing values 1, 0, and 0.1. The correct result should be 9.81, 0, and 0.98, respectively.
  1. If the python code passes all the test the grade is A, (passing two = B, passing one = C). And if they pass none, the grade will be Fail
  1. You have to store the `grade.txt` file into each student's folder with their grade.
  1. You have to write a report with student phone number and their grade into `report.txt`.
      - You have to extract the phone number from python file and remove dash or space.
      - For the students who did not submit, you can use the folder name instead of phone number.


#### Sample
##### [Correct assignment folder](https://github.com/uis-prepcourse-2019/sys-admin-101/tree/master/group-task2/00)
##### report.txt
```
...
3997423060 B
5130705778 A
75 Fail
4496778733 A
6820703746 C
1956924640 Fail
9610233884 Fail
80 Fail
...
```
