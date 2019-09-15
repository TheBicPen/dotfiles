

addition=
output="~/Videos/raw/output-ffmpeg$addition.mkv"

while [ $# -gt 0 ]; do
	case "$1" in
		-o)
		addition=$2
		shift
	esac
	shift
done


ffmpeg -f pulse -i default -f x11grab -s 1366x768 -framerate 30 -i :0.0 -crf 25 -preset ultrafast  ~/Videos/raw/output-ffmpeg11.mkv
