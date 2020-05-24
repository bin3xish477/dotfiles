#!/bin/bash

commitMessage=$1

if [[ $# -eq 0 ]]; then
	echo "Please provide a commit message!"
	exit 1
else
	git add *
	git commit -am "$commitMessage"
	git push
fi
