#!/bin/sh

for i in {00..99}; do
  path=$(printf "%02d" $i)
  echo $path

  # concatenate path and filename (main.py)
  #file=

  if test -f "$file"; then
    phonenumber="$(grep 'PHONE_NUMBER' $file)"

    #Extract only number from above variable
    #phonenumber=

    # Execute the python file with three cases (1, 0, 0.1) and stored the result into below variables
    '''
    case1=
    case2=
    case3=
    '''

    counter=0
    # Use condition statements and test the three cases. The correct answer is (9.81, 0, 0.98)
    # if blahblah


    grade="Fail"
    # Use another condtion statements and decide the grade
    # if blahblah

    #Write a file into each folder with name "grade.txt" and the content is only grade.
    #Write a file called "report.txt" and append the each grade with phone number.

  else
    grade="Fail"
    #Write a file into each folder with name "grade.txt" and the content is only grade.
    #Write a file called "report.txt" and append the each grade with folder number.

  fi
done
