#!/usr/bin/python3
import hashlib
from string import ascii_letters, digits, punctuation
from itertools import product

# Hidden password hash
passwordHash = "b8c167ca7b87852a6f2c68eced2c091a2fbce01df7d52de37042cd15837b2157"

# Generate combinations of characters on-the-fly
value = ascii_letters + digits + punctuation

# Repeat the process for different lengths of words
for i in range(1, 4):
    for j in product(value, repeat=i):
        word = "".join(j)
        # Hash the word
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
        print(f"Trying password {word}:{wordlistHash}")
        # If the hash matches the correct password's hash, the password is cracked
        if wordlistHash == passwordHash:
            print(f"Password has been cracked! It was {word}")
            exit()  # Exit the script after finding the password






























