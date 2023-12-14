#!/bin/bash

NUMBER1=$1

if [ $NUMBER1 -gt 100 ]
then
    echo "given number $NUMBER1 is greater than 100"
else
    echo "given number $NUMBER1 is less than 100"
fi