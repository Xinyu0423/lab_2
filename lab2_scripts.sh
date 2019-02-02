#!/bin/bash
# Authors : Xinyu Jiang
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a regular expression:"
read rExpression
echo "Please enter a file name"
read inputFile
grep $rExpression $inputFile
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $1
grep -o '303-[0-9]\{3\}\-[0-9]\{4\}' $1>phone_result.txt

grep -E -c '[A-Za-z0-9_\-\.]+@[A-Za-z0-9_\-\.]+\.[A-Za-z]{2,6}$' $1
grep -E -o '[A-Za-z0-9_\-\.]+@geocities.com' $1>email_result.txt

grep $2 $1>command_results.txt
