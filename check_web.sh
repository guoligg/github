#!?bin/sh

if [  $(ps-ef|grep "nginx" |egrep -v "php-fpm|grep"|wc -l) -ge 2 ]
	then
		echo "Nginx is running."
	else 
		echo "Nginx is stopped."
		/application/nginx/sbin/nginx
fi 
