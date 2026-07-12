#!/bin/bash
Package=$@
USERID=$(id -u)

validate_function(){
if [ $1 -ne 0 ]
then
    echo "Installing $2 ...."
    dnf install $2 -y
else
    echo "$2 is already installed"
fi
}

for i in $Package
do
    echo "listing $i"
    rpm -q $i
    validate_function $? $i
done


