echo "Welcome to User Registration Program"
#!/bin/bash -x
#program for FirstName,LastName and Email of the user

read -p "Enter a valid first name :" firstName
read -p "Enter a valid last name :" lastName
read -p "Enter a validate Email :" email

pattern1="^[[:upper:]]{1}[[:lower:]]{2,}$"	                                               #pattern for first name of the user
pattern2="^[[:upper:]]{1}[[:lower:]]{2,}$"	                                               #pattern for last name of the user
pattern3="^[a-zA-Z0-9]+([.+_-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2})*$"       #pattern for valid email

if [[ $firstName =~ $pattern1 ]]                 #checking for valid first name
then
    echo "Valid firstname"
else
    echo "Invalid firstname"
fi

if [[ $lastName =~ $pattern2 ]]                  #checking for valid lastname
then
    echo "Valid lastname"
else
    echo "Invalid lastname"
fi

if [[ $email =~ $pattern3 ]]                     #checking for valid email
then
        echo "Valid Email"
else
        echo "Invalid Email"
fi
