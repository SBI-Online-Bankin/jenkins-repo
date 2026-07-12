#!/bin/bash
Package=$@
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please try with super user or use sudo previlises"
    # exit 1    # here "exit 1" is Manually exit
else
    echo "You are super user"
fi

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
    validate_function $? "$i"
done


