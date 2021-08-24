#!/usr/bin/env bash

main () {
	aeioulnrst="aeioulnrst"
	dg="dg"
	bcmp="bcmp"
	fhvwy="fhvwy"
	k="k"
	jx="jx"
	qz="qz"
	score=0
	word=${1,,}
	for ((i=0; i<${#1}; i++))
	do
		if [[ ${aeioulnrst} == *"${word:$i:1}"* ]]
		then	
			(( score++ ))
			continue
		fi
		if [[ ${dg} == *"${word:$i:1}"* ]]
		then
                        (( score+=2 ))
			continue
		fi
		if [[ ${bcmp} == *"${word:$i:1}"* ]]
                then    
                        (( score+=3 ))
			continue
                fi
                if [[ ${fhvwy} == *"${word:$i:1}"* ]]
                then
                        (( score+=4 ))
			continue
                fi
		if [[ ${k} == *"${word:$i:1}"* ]]
                then    
                        (( score+=5 ))
			continue
                fi
                if [[ ${jx} == *"${word:$i:1}"* ]]
                then
                        (( score+=8 ))
			continue
                fi
		if [[ ${qz} == *"${word:$i:1}"* ]]
                then
                        (( score+=10 ))
			continue
                fi
	done
	echo $score
}

main "$@"
