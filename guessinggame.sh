#!/usr/bin/env bash

clear
declare -i numFiles
numFiles=$(find . -maxdepth 1 -not -type d | wc --lines)

function makeValidGuess {
   until read -p "Унесите колико датотека има у тренутном директориjуму:  " guess;
   [[ "$guess" =~ ^[0-9]+$ ]]; do
       echo -e "\nУнесите ненегативну целоброjну вредност!\n"
   done
}
while makeValidGuess; do
    if (( guess < numFiles )); then
         echo -e "\nВаша процена jе премала."
    elif (( guess > numFiles )); then
         echo -e "\nВаша процена jе превелика."
    else
        echo -e "\nЧеститке! Одговор $numFiles jе тачан!"
        exit
    fi
done
  
