echo "Welcome to User Registration Program"
#!/bin/bash -x
#program for first name of the user

read -p "Enter a valid first name :" firstName
pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"	           #pattern for first name of the user

if [[ $firstName =~ $pattern ]]                            #checking for valid first name
then
    echo "Valid firstname"
else
    echo "Invalid firstname"
fi
