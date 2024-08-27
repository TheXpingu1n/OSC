#use an argument of an absolute path
abs_path=$1
if [[ -d "$abs_path" ]]
then
	for file in "$abs_path"/*
	do
	if [[ -f "$file" ]]
	then
		if [[ "$file" == *.txt ]]
		then
			new_name="$abs_path/old_$(basename "$file")"	
			mv "$file" "$new_name"
		fi
	fi
	done
fi
