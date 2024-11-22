#!/usr/bin/env bash

# Function to count the number of files in the current directory
file_count() {
  ls -1 | wc -l
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Get the actual file count
correct_count=$(file_count)
user_guess=-1

# Main loop
while [[ $user_guess -ne $correct_count ]]; do
  read -p "Enter your guess: " user_guess

  if [[ $user_guess -lt $correct_count ]]; then
    echo "Your guess is too low."
  elif [[ $user_guess -gt $correct_count ]]; then
    echo "Your guess is too high."
  else
    echo "Congratulations! You guessed the correct number of files."
  fi
done
