#!/bin/sh

if [  "$1" -eq "add" ]
	then
		cat $2 >> /etc/user.conf
	else if [ "$1" -eq "delete" ]
		
		
