echo "Welcome to User Registration Program"
#!/bin/bash -x
#program for FirstName,LastName,Email and password of the user
shopt -s  extglob

read -p "Enter a valid first name :" firstName
read -p "Enter a valid last name :" lastName
read -p "Enter a validate Email :" email
read -p "Enter a valid Mobile Number :" mobileNumber
read -p "Enter User Password : " password

pattern1="^[[:upper:]]{1}[[:lower:]]{2,}$"	#pattern for first name of the user
pattern2="^[[:upper:]]{1}[[:lower:]]{2,}$"	#pattern for last name of the user
pattern3="^[a-zA-Z0-9]+([.+_-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2})*$"       #pattern for valid email
pattern4="^[0-9]{2}[[:space:]]{1}[0-9]{10}$"			                               #pattern for mobile number of the user
passwordPatternForUpperCase='^[a-zA-Z0-9\$|#|\!|\@]*[A-Z]+[a-zA-Z0-9]*$'                       #pattern for atleast one upper case in password
passwordLengthGrtrThan8Char='^[a-zA-Z0-9\$|#|\!|\@]{8}[a-zA-Z0-9]*$'                           #pattern for minimum 8 characters in password
passwordPatternForNumber='^[a-zA-Z0-9\$|#|\!|\@]*[0-9]+[a-zA-Z0-9]*$'                          #pattern for atleast one number in password
passwordPatternForOneSpecialChar="^[a-zA-Z0-9]*[\$|#|\!|\@]{1}[a-zA-Z0-9]*$"                   #pattern for one special character in password

if [[ $firstName =~ $pattern1 ]]                                             #checking for valid first name
then
    echo "Valid firstname"
else
    echo "Invalid firstname"
fi

if [[ $lastName =~ $pattern2 ]]                                              #checking for valid last name
then
    echo "Valid lastname"
else
    echo "Invalid lastname"
fi
if [[ $email =~ $pattern3 ]]                                                 #checking for valid email
then
        echo "Valid Email"
else
        echo "Invalid Email"
fi

if [[ $mobileNumber =~ $pattern4 ]]                                          #checking for valid mobile number
then
    echo "Valid Mobile Number"
else
    echo "Invalid Mobile Number"
fi

if [[ $password =~ $passwordLengthGrtrThan8Char ]]                           #checking for valid password
then
	if [[ $password =~ $passwordPatternForUpperCase ]]
	then
		if [[ $password =~ $passwordPatternForNumber ]]
		then
			if [[ $password =~ $passwordPatternForOneSpecialChar ]]
			then
				echo "$password is valid "
			else
				echo "$Password must contain one Special Character"
			fi
		else
			echo "$password does'nt contain a number"
		fi
	else
		echo "$password Invalid password"
	fi
else 
	echo"Your Password is Less than 8 characters"
fi
