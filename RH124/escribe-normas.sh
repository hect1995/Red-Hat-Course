#!/bin/bash
for dir in /home/*/     # list directories in the form "/tmp/dirname/"
do     
	if [ ! -f ${dir}normas_nombres_ficheros.txt ]; then
		touch ${dir}normas_nombres_ficheros.txt
		echo ${dir} >> /var/log/escribe-norm-file.txt
	fi 
done

