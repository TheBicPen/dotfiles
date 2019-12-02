files="$@"
for file in $files ; do
	echo ""
	echo "$file"
	java -jar ~/Downloads/google-java-format-1.7-all-deps.jar $file | diff - $file --color
done
