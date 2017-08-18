#!/bin/sh
cat <<EOF
	1.[install lamp]
	2.[install lnmp]
	3.[exit]
EOF
read -t 20 -p "pls input the num you want:" a
[ "$a" != "1" -a "$a" != "2" -a "$a" != "3" ]&&\
	{
		echo "Input error"
		exit 
	}
if [ $a -eq 1 ];then
{
	[ -x "server/scripts/lamp.sh" ]&&{
	echo "start installing lamp."
	/bin/sh /server/scripts/lamp.sh
	echo "lamp is installed"
	exit 0
	} ||{
			echo "file not exits or no exec"
			exit 1
		}
}
fi
if [ $a -eq 2 ];then
{
	[ -x "server/scripts/lnmp.sh" ]&&{
        echo "start installing lnmp."
       /bin/sh /server/scripts/lnmp.sh
        echo "lnmp is installed"
        exit 0
	}||{
		echo "file not exits or no exec"
		exit 2
		}
}
fi

if [ $a -eq 3 ]; then
{
	echo >& /dev/null
	exit 0
}
fi
