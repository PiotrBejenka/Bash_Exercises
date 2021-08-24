#!/usr/bin/env bash

main () {
	for i in $(echo "$1" | tr -C a-zA-Z"'" "\n")
	do
		acronym="${acronym}${i:0:1}"
	done
	echo $acronym | tr a-z A-Z
}

main "$@"
