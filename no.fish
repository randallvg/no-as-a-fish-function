function no
	set jsonfile (dirname (status --current-filename))/noreasons.json
	set index (math $(random) % $(jq length $jsonfile))
	jq --arg i $index '.[$i|tonumber]' "$jsonfile"
end
