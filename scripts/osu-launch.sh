file=
if [ $# -gt 0 ]; then
	file="$file $@"
fi
echo "launching osu! with files $file"

LD_LIBRARY_PATH="/home/alex/git-repos/osu/osu.Desktop/bin/Release/netcoreapp2.2/linux-x64" \
/home/alex/git-repos/osu/osu.Desktop/bin/Release/netcoreapp2.2/linux-x64/osu\! $file
