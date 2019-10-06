#!/bin/bash
echo '---' > index.md
echo 'layout: default' >> index.md
echo '---' >> index.md
echo '### Downloads' >> index.md

for INFILE in *.zip
do
	echo "- [$INFILE](${INFILE})" >> index.md
done

echo $'\n' >> index.md
echo "* * *" >> index.md
echo "Last updated:" >> index.md
echo `date` >> index.md


echo '---' > rockrobo.md
echo 'layout: default' >> rockrobo.md
echo '---' >> rockrobo.md
echo '### Downloads' >> rockrobo.md

for INFILE in *.pkg
do
	echo "- [$INFILE](${INFILE})" >> rockrobo.md
done

echo $'\n' >> rockrobo.md
echo "* * *" >> rockrobo.md
echo "Last updated:" >> rockrobo.md
echo `date` >> rockrobo.md
