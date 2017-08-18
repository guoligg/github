#!/bin/sh
# Defining colors using functions
add_color()
{
BLUE_COLOR='\E[1;34m'
RES_COLOR='\E[0m'
case $1 in 
	blue|BLUE)
		echo -e "$BLUE_COLOR $2 $RES_COLOR" 
		;;
esac
}
# Defining menus using functions
function menu()
{
	cat << EOF
=======================	
	1.apple
	2.pear
	3.banana
	4.cherry
	5.exit
=======================
EOF
	read -p "pls input the fruit your like:" fruit
}
# Loading menu adde output user's choice
function check()
{
	menu
	case $fruit in
		1)
			echo -e "\033[33m apple \033[0m"
		;;
		2)
			echo -e "\033[32m pear \033[0m"		
		;;
		3)
			echo -e "\033[34m banana \033[0m"
		;;
		4)
                        add_color blue cherry
		;;
		5)
			exit
		;;
		*)
			echo "pls into a right number:{1|2|3|4|5}"
	esac
}
#Bad exectuion(load check function)
main()
{
	while true
	do
		check
	done
}
main
