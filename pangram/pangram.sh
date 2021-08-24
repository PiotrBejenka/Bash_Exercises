#!/usr/bin/env bash

main () {
	alphabet="qwertyuiopasdfghjklzxcvbnm"
	for (( i=0; i<${#alphabet}; i++ ))
	do
		if [[ ${1,,} != *"${alphabet:$i:1}"* ]]
		then
			echo "false"
			exit 0
		fi
	done

	echo "true"
}

main "$@"
