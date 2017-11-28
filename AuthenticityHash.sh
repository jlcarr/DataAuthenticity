#!/bin/bash

filePath="/path/to/files"
fileName="hash_data_date_$(date +"%Y-%m-%d")_time_$(date +"%H_%M_%S").txt"


find "$filePath" -type f -print0 | LC_ALL=C sort -z | xargs -0 shasum -a 512256 > "$fileName"
chmod -w "$fileName"

cat "$fileName" | shasum -a 512256 > "final_value_$fileName"
chmod -w "final_value_$fileName"

cat "$fileName" | shasum -a 512256


# find $filePath -print0
#find and output all files in the given file path
#separate them with the null byte

# LC_ALL=C sort -z
#sort the names
#take input and give output delimited by null character (rather than spaces)
#do so bytewise (therefore same on any system)

# xargs -0 shasum -a 512256
#take in arguments separated by null character (rather than spaces)
#feed into the SHA2 SHA-512/256 algorithm

# > "$fileName"
#output the results into the $fileName file

# cat "$fileName" | shasum -a 512256
# put the contents of $fileName into the SHA2 SHA-512/256 algorithm

# chmod -w "$fileName"
#edit permissions so that the file may not be edited
