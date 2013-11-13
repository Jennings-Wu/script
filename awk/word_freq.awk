#!/usr/bin/awk -f
BEGIN {
    FS = "[^a-zA-Z]+"
    OFS = "\t"
}

{
    for (i = 1; i < NF; i++)
	words[tolower($i)]++;
}

END {
    delete words[""]
    for (i in words)
	print words[i], i
}
