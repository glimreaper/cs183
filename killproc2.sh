#!/bin/bash

uid=$(pgrep "proc")
elapsedTime=$(ps -o etimes $i)
time=$(echo $elapsedTime | cut -d ' ' -f 2)
echo $time
if [ $time -ge 10 ] ; then
	kill $uid
fi
done
