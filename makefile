draft_README.md:
	touch README.md
	echo "# GUESSING GAME" > README.MD
	echo "" >> README.md
	echo date >> README.md
	echo "" >> README.md
	echo (wc -l guessinggame.sh | egrep -o "[0-9]+") >> README.md

