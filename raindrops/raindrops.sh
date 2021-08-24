#!/usr/bin/env bash

main () {
	sound=""
	if [[ $(( $1 % 3 )) -eq 0 ]] 
	then	
		sound=$sound"Pling"
	fi
	if [[ $(( $1 % 5 )) -eq 0 ]] 
	then
		sound=$sound"Plang"
	fi
	if [[ $(( $1 % 7 )) -eq 0 ]] 
	then
		sound=$sound"Plong"
	fi
	echo "${sound:-$1}"
}

main "$@"
