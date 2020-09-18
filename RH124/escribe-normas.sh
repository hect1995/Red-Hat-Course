#!/bin/bash

FILE_SEARCH="normas_nombres_ficheros.txt"
LOGFILE="/var/log/escribe-norm-file.txt"
for dir in /home/*/     
do     
        tmp_user=${dir#/home/}
        user=${tmp_user%/}
        if [ ! -f ${dir}${FILE_SEARCH} ]; then
                touch ${dir}${FILE_SEARCH}
                chown ${user}:${user} ${dir}${FILE_SEARCH}
                echo $user >> ${LOGFILE}
        fi 
done
