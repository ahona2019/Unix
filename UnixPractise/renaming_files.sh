#!/bin/bash

files=`ls -l | grep ^-`

for f in $files
do
mv  $f $f.new 
done	
