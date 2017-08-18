#!/bin/sh
cur_free=$(free -m | awk 'NR==3{print $NF}')
chars="current memory is $cur_free."
if [ "$cur_free" -lt "1700" ]
	then
		echo $chars
		echo $chars | mail -s "$chars" 54680720@qq.com
fi
