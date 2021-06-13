#!/bin/bash


for i in $(ls -F | grep '/')
do
	for v in $(ls -F $i | grep '/')
	do
		comm -23 <(ls $i$v | grep .ebuild | sort) <(cat $i$v/Manifest | grep EBUILD | cut -d ' ' -f2 | sort) | xargs -I {} sh -c "cd $i$v && ebuild {} manifest"
	done
done

