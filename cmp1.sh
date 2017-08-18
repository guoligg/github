#!/bin/sh
#Discription:  compare two int 

#no.1 judge agr nums.

[ $# -ne 2 ] && {
	echo "USAGE:"$0" num1 num2"
	exit 1
}

#no.2 judge if int.

expr $1 + $2 &>/dev/null
[ $? -ne 0 ]&&{
	echo "pls input two nums"
	exit 2
}

#no.3 compare two int.

[ $1 -lt $2 ] && {
	echo "$1<$2"
	exit 0
}
[ $1 -eq $2 ] && {
        echo "$1=$2"
        exit 0
}
[ $1 -gt $2 ] && {
        echo "$1>$2"
        exit 0
}

