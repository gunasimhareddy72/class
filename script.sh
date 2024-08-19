echo 
echo please choose one of the options below
echo 
echo 'a = Display date and time'
echo 
echo 'b = List files and directories'
echo
echo 'c = list user logged in'
echo
echo 'd = check system uptime'
echo

		read $choices
		case $choices in
a) date;;
b) ls -l;;
c) cat /etc/passwd | more;;
d) uptime;;
e) ls;;
') echo invalid choice
		esac
