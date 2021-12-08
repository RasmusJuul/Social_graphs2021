#!/bin/bash
#
# papakia script
#

[ "$1" = '-h' ] && sed -n '2,/^$/ s/#// p' "$0" && exit

work() {
	 tr '[:upper:]' '[:lower:]' < "$1" > "${1%.txt}.lower.txt"
}

work_all() {
	while [ "$#" != 0 ]
	do
		work "$1"
		shift
	done
}

work_all peaky.blinders.s0{1..5}.txt


