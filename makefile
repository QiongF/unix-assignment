all: README.md Title Date_and_time Count_lines

README.md:
	touch README.md

Title:
	echo "# Project Title" > README.md
	echo "## Unix Workbench Assignment: Bash, Make, Git and GitHub" >> README.md

Date_and_time:
	echo "## Date and time" >> README.md
	echo "The command was run at:" >> README.md
	date >> README.md

Count_lines: guessinggame.sh
	echo "## Script Info" >> README.md
	echo "The **guessinggame.sh** contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

