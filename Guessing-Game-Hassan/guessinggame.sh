#!/usr/bin/env bash
# File: guessinggame.sh

function  correct {
	echo "That is correct you win!"
}

function  low {
	echo "Your guess is too low, please try again:"
}

function  high {
	echo "Your guess is too high, please try again:"
}

x=true

echo "Game started."

echo "How many files you think are in the current directory"

howmany=$(find . -type f | wc -l)

while [[ $x = true ]]
do
	read guess
	if [[ $guess -eq $howmany ]]
	then
		correct
		let x=false
	elif [[ $guess -lt $howmany ]]
	then
		low
	else
		high
	fi
done
