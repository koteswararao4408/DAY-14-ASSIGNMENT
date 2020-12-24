echo "Welcome to User Registration Program"
#!/bin/bash -x
#program for First AND Last name of the user

read -p "Enter a valid first name :" firstName
read -p "Enter a valid last name :" lastName
pattern1="^[[:upper:]]{1}[[:lower:]]{2,}$"	           #pattern for first name of the user
pattern2="^[[:upper:]]{1}[[:lower:]]{2,}$"	           #pattern for last name of the user

if [[ $firstName =~ $pattern1 ]]                           #checking for valid first name
then
    echo "Valid firstname"
else
    echo "Invalid firstname"
fi

if [[ $lastName =~ $pattern2 ]]                            #checking for valid lastname
then
    echo "Valid lastname"
else
    echo "Invalid lastname"
fi
