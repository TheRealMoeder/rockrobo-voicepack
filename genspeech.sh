#!/bin/bash

# Check for machine type
if [ "`uname`" = "Darwin" ]
then
	TTSCMD="say"
        TTSCMD2="pico2wave"
	if [ $# = 4 ]
	then
		TTSOPT="-r $4 -v $1 -o"
	else
		TTSOPT="-v $1 -o"
	fi
	TTSFILEEXT="aiff"
else
	TTSCMD="espeak"
	TTSCMD2="pico2wave"
	TTSOPT="-z -w "
	TTSOPT2="--wave="
	TTSFILEEXT="wav"
fi

# Test for TTS command existance
command -v $TTSCMD2 >/dev/null 2>&1
if [ $? != 0 ]
then
	echo "$TTSCMD2 unavailable, trying $TTSCMD..."
else
        TTSCMD=$TTSCMD2
	TTSOPT=$TTSOPT2
fi

command -v $TTSCMD >/dev/null 2>&1
if [ $? != 0 ]
then
	echo "Please install $TTSCMD or $TTSCMD2 onto your system"
        exit 1
fi

echo "Generating voice files with $TTSCMD".
SPEECHDIR="wav"
mkdir $SPEECHDIR 2>/dev/null
rm -f ${SPEECHDIR}/* >/dev/null 2>&1
mkdir ${SPEECHDIR}/processed

for INFILE in rockrobo-voicepack$2.txt
do
	echo "Processing roborock messages..."
	while read LINE
	do		
		FILENAME=`echo $LINE  | cut -d':' -f1`
		LABEL=`echo $LINE | cut -d':' -f2`
		LABEL=`echo $LABEL | sed -e 's/^[ \t]+//g'`
		MSG=`echo $LABEL | sed -e 's/^ *//;s/ *$//'`
		$TTSCMD ${TTSOPT}${SPEECHDIR}/${FILENAME}.${TTSFILEEXT} "$MSG"
		sox-14.4.2/sox ${SPEECHDIR}/${FILENAME}.${TTSFILEEXT} --norm=-0.1 ${SPEECHDIR}/processed/${FILENAME}.wav
		cp ${SPEECHDIR}/processed/${FILENAME}.wav .
		echo "Voicefile ${FILENAME}.wav generated"
 	done < $INFILE
done

tar cfz ${2}-rockrobo-voicepack_${1}_${3}.pkg *.wav
echo "Encrypting voicepack..."
ccrypt-1.11.mac-univ/ccrypt -e -K "r0ckrobo#23456" ${2}-rockrobo-voicepack_${1}_${3}.pkg
cp ${2}-rockrobo-voicepack_${1}_${3}.pkg.cpt ${2}-rockrobo-voicepack_${1}_${3}.pkg
rm ${2}-rockrobo-voicepack_${1}_${3}.pkg.cpt
echo "Voicepack created as as ${2}-rockrobo-voicepack_${1}_${3}.pkg"
exit 0
