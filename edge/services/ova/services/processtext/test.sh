#!/bin/bash

line="what your ip address"
if echo "$line" | grep -q "ip address"; then
	echo "match"
else 
	echo "no match"
fi	
