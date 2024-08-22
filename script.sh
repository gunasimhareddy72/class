#!/bin/bash
echo
echo please choose one of the option below
echo
echo 'a = Display date and time'
echo
echo 'b = list files and directories'
echo
echo 'c = list user logged in'
echo
echo 'd = check system update'
echo
	read $choices
	case $choices in
a) date;;
b) ls -l;;
c) cat /etc/passwd | more;;
d) touch file.txt;;
g) grep -name script.sh echo
f) echo invalid choices
		esac 
