#!/bin/bash
for dir in /home/*/     # list directories in the form "/tmp/dirname/"
do
	find ${dir} -name "secret*" -print0 | while read -d $'\0' file 
	do
	    ls -lh $file >> /var/log/borrasecrets.txt
	    rm -rf $file
	done
done

