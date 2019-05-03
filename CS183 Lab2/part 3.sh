#!/bin/bash
#lab2 part 3

FILE="full/path/to/lab2-test"
if [ -e "$FILE" ] 
then 
	echo "`date "+%Y-%m-%d %H:%M:%S"`- File $FILE has been found" >> /var/log/cs183/uptime.log
else
	tail -f /var/log/cs183/uptime.log | grep -m 1 "found" | echo "`date "+%Y-%m-%d %H:%M:%S"`- File $FILE has been lost" >> /var/log/cs183/uptime.log
fi