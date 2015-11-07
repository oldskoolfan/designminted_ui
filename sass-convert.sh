#!/bin/bash

cd ~/EmberProjects/design-minted/app

find styles -path styles/vendor -prune -o -name '*.scss' | while read f;
do
	echo "Processing $f file..."
	filename="${f##*/}"
	directory="${f%/*}"
	sass-convert -F scss -T sass --indent t $f ${f/.scss/.sass}
	find $directory -name $filename -delete 
done

exit 0