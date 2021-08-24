#!/usr/bin/env bash

main () {
	if [[ ${1} == "total" ]]
	then
		total=0
		for (( i=0; i<64; i++ ))
		do
			total=$(echo $total + 2^$i | bc )
		done
		echo $total
	elif [[ $1 -gt 0 && $1 -le 64 ]]
        then
		number_of_grains=$(echo 2^$(($1 - 1)) | bc )
                echo $number_of_grains
	else
      		echo "Error: invalid input"
                exit 1
	fi
}

main "$@"
