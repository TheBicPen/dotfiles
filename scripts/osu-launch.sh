file=
if [ $# -gt 0 ]; then
	file="$1"
	echo "$file"
fi

LD_LIBRARY_PATH="/home/alex/git-repos/osu/osu.Desktop/bin/Release/netcoreapp2.2" \
/home/alex/git-repos/osu/osu.Desktop/bin/Release/netcoreapp2.2/linux-x64/osu\! "$file"
