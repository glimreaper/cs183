#!/bin/bash
#lab2 part 2

while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
	echo "$f1 $f3 `id -Gn $f1`"
done < /etc/passwd