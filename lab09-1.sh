read -p "enter the directory path"directory

prefix="shell"
suffix="_linux"
cd "$directory"|| exit
for file in *; do
if[ -f "$file" ]; then
new_filename="${prefix}${file}${suffix}"
mv "$file" "$new_filename"
echo "renamed: $file -> $new_filename"
fi
done


