#!/bin/bash

# Check for machine type
if [ "`uname`" = "Darwin" ]
then
	TTSCMD="say"
        TTSCMD2="pico2wave"
	if [ $# = 5 ]
	then
		TTSOPT="-r $5 -v $2 -o"
	else
		TTSOPT="-v $2 -o"
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

# Test for lame command existance
command -v lame >/dev/null 2>&1
if [ $? != 0 ]
then
	echo "Please install lame onto your system"
        exit 1
fi

echo "Generating voice files with $TTSCMD".
SPEECHDIR="WAV"
mkdir $SPEECHDIR 2>/dev/null
rm -f ${SPEECHDIR}/* >/dev/null 2>&1
mkdir ${SPEECHDIR}/processed

for INFILE in rockrobo-voicepack$1.txt
do
	echo "Processing roborock messages..."
	while read LINE
	do		
		FILENAME=`echo $LINE  | cut -d':' -f1`
		LABEL=`echo $LINE | cut -d':' -f2`
		LABEL=`echo $LABEL | sed -e 's/^[ \t]+//g'`
		MSG=`echo $LABEL | sed -e 's/^ *//;s/ *$//'`
		$TTSCMD ${TTSOPT}${SPEECHDIR}/${FILENAME}.${TTSFILEEXT} "$MSG"
		../sox-14.4.2/sox ${SPEECHDIR}/${FILENAME}.${TTSFILEEXT} --norm=-0.1 ${SPEECHDIR}/processed/${FILENAME}.${TTSFILEEXT}
		cp ${SPEECHDIR}/processed/${FILENAME}.${TTSFILEEXT} ${SPEECHDIR}/${FILENAME}.${TTSFILEEXT}
#		lame --quiet ${SPEECHDIR}/${IDXTEXT}.${TTSFILEEXT} ${SPEECHDIR}/${IDXTEXT}.mp3
#		rm ${SPEECHDIR}/${IDXTEXT}.${TTSFILEEXT}
		echo "Voicefile ${FILENAME}.wav generated"
 	done < $INFILE
done

tar -cfz ${3}-rockrobo-voicepack_${2}_${4}.pkg *.wav
ccrypt -e -K "r0ckrobo#23456" ${3}-rockrobo-voicepack_${2}_${4}.pkg
cp ${3}-rockrobo-voicepack_${2}_${4}.pkg.cpt ${3}-rockrobo-voicepack_${2}_${4}.pkg
echo "Voicepack created as as ${3}-rockrobo-voicepack_${2}_${4}.pkg"
exit 0
