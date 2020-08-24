function compare {

while true
do
	read response
	if [[ $response =~ [^0-9] ]]
	then
		echo "Sorry it's not a number. Try again:"
	elif [[ $response -gt $file_num ]]
	then
		echo "You entered: $response, it's too high. Try again:"
	elif [[ $response -lt $file_num ]]
	then
		echo "You entered: $response, it's too low. Try again:"
#	elif [[ $response -eq $file_num ]]
#	then
	else
		break
	fi
done

echo "Congratulations! You've got the correct number!"
}

file_num=$(ls -1 . | wc -l)

echo "Guess how many files are here in this directory? Type in a number:"

compare $response $file_num
