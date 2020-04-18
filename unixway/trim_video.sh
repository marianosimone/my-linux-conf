# All times in hh:mm:ss.msec format

ffmpeg -ss $START -i $INFILE -c copy -map 0 -t $DURATION $OUTFILE

# Alternative

ffmpeg -ss $START -i $INFILE -c copy -map 0 -to $END $OUTFILE
