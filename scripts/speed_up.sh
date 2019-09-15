#!/bin/sh


file="~/Videos/raw/input.mkv"
out="~/Videos/out/output.mkv"

if [ $# -eq 2 ]; then
	file="$1"
	out="$2"
elif [ $# -eq 1 ]; then
	echo "Usage: \"\$ speed_up.sh [input_file output_file]\""
	exit 1
else
	echo "No files provided. Assuming input = $file, output = $out"
fi

if ! [ -r $file ]; then 
	echo "Unable to read $file"
	exit 1
elif [ -e $out ]; then
	echo "$out already exists."
	exit 1
fi

ffmpeg -i "$file" -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=2.0[a]" -r 60 -map "[v]" -map "[a]" "$out"
