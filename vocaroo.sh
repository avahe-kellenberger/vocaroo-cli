#!/bin/bash
file=$1
file_name="${file##*/}"
extension="${file_name##*.}"

result=$(curl -L -F "upload_data=@${file};type=audio/${extension};filename=${file_name}" "https://vocaroo.com/media/upload.php?respond_from_www_main" -e "https://vocaroo.com/?upload" -A "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0")

regex="https:\/\/vocaroo.com\/[^\"]*"
link=$(echo ${result} | egrep -o ${regex})

printf "$(tput setaf 2)Upload complete: $(tput setaf 4)%s\n" $(echo ${result} | egrep -o ${regex})
