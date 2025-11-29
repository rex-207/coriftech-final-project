Password Strength Checker (Bash)

This project is a simple password strength checker written in Bash.
It evaluates the strength of a password based on common security requirements and provides a final rating.

Features

Rejects passwords shorter than 8 characters

Checks for:

Lowercase letters

Uppercase letters

Numbers

Special characters

Displays a strength rating from "Very Weak" to "Very Strong"

Uses silent password input for privacy


How It Works

The script evaluates the password using the following methods:

read -sp is used to read the password without showing it on the screen.

${#password} checks the total password length.

Regular expressions (=~) are used to detect lowercase letters, uppercase letters, numbers, and special characters.

Each satisfied condition increases the score.

A case statement evaluates the final score and prints the corresponding strength level.


Usage

Clone the repository:

git clone https://github.com/yourusername/password-strength-checker.git
cd password-strength-checker


Make the script executable:

chmod +x password_checker.sh


Run the script:

./password_checker.sh

Example Output
Enter a password:
Strength: Strong



Requirements

Bash shell (Linux, macOS, or WSL/Kali on VirtualBox)

File Structure
coriftech_final_project/
│── password_checker.sh
└── README.txt
