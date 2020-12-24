
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

if [[ $firstName =~ $pattern1 ]]                                        #checking for valid first name
then
    echo "Valid firstname"
else
    echo "Invalid firstname"
fi

if [[ $lastName =~ $pattern2 ]]                                         #checking for valid last name
then
    echo "Valid lastname"
else
    echo "Invalid lastname"
fi
if [[ $email =~ $pattern3 ]]                                            #checking for valid email
then
        echo "Valid Email"
else
        echo "Invalid Email"
fi

if [[ $mobileNumber =~ $pattern4 ]]                                     #checking for valid mobile number
then
    echo "Valid Mobile Number"
else
    echo "Invalid Mobile Number"
fi

if [[ $password =~ $passwordLengthGrtrThan8Char ]]                      #checking for valid password
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


#--------------Valid Email Samples-----------------

#1.Enter a validate Email :abc@yahoo.com
#  Valid Email

#2.Enter a validate Email :abc-100@yahoo.com
#  Valid Email

#3.Enter a validate Email :abc.100@yahoo.com
# Valid Email

#4.Enter a validate Email :abc111@abc.com
#  Valid Email

#5.Enter a validate Email :abc-100@abc.net
#  Valid Email

#6.Enter a validate Email :abc.100@abc.com.au
#  Valid Email

#7.Enter a validate Email :abc@1.com
#  Valid Email

#8.Enter a validate Email :abc@gmail.com.com
#  Valid Email

#9.Enter a validate Email :abc+100@gmail.com
#  Valid Email


#----------Invalid Emails-----------

#1.Enter a validate Email :abc
#  Invalid Email

#2.Enter a validate Email :abc@.com.my
#  Invalid Email

#3.Enter a validate Email :abc123@gmail.a
#  Invalid Email

#4.Enter a validate Email :abc123@.com
#  Invalid Email

#5.Enter a validate Email :abc123@.com.com
#  Invalid Email

#6.Enter a validate Email :.abc@abc.com
#  Invalid Email

#7.Enter a validate Email :abc()*@gmail.com
#  Invalid Email

#8.Enter a validate Email :abc@%*.com
#  Invalid Email

#9.Enter a validate Email :abc..2002@gmail.com
#  Invalid Email

#10.Enter a validate Email :abc.@gmail.com
#   Invalid Email

#11.Enter a validate Email :abc@abc@gmail.com
#   Invalid Email

#12.Enter a validate Email :abc@gmail.com.1a
#   Invalid Email

#13.Enter a validate Email :abc@gmail.com.aa.au
#   Invalid Email
