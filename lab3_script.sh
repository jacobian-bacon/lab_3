#!/bin/bash
# Authors : Julien King 
# Date: 2/7/2019

#Problem 1 Code:

#for step 1) simply get two bash variables:
echo "Enter a filename: "
read usrFile
echo "Enter a regex: "
read usrEx

#for step 2) use those variables (identified with $) to execute grep:
grep -E $usrEx $usrFile 

#for step 3) search for a pattern of 3 numbers followed by a character followed by 3 numbers followed by a character followed by 4 characters
grep -E -c "^[1234567890]{1,1}[1234567890]{1,1}[1234567890]{1,1}.?[1234567890]{1,1}[1234567890]{1,1}[1234567890]{1,1}.?[1234567890]{1,1}[1234567890]{1,1}[1234567890]{1,1}[1234567890]{1,1}$" regex_practice.txt

#for step 4)
# part 1 -- a regex for @ followed by characters followed by the literal ',':
grep -E -c "@.+\." regex_practice.txt 


# part 2 Matches standard phone number formats:
grep -E "^303.?[1234567890]{1,1}[1234567890]{1,1}[1234567890]{1,1}.?[1234567890]{1,1}[1234567890]{1,1}[1234567890]{1,1}[1234567890]{1,1}$" regex_practice.txt

# part 3 Specific for geocities:
grep -E "@geocities\." regex_practice.txt >> email_results.txt

git add email_results.txt

git commit -m "some default message"

git push origin master
