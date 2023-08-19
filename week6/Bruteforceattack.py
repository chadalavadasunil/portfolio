#!/usr/bin/python3
import hashlib
from string import ascii_letters, digits, punctuation
from itertools import product

# Hidden password hash
passwordHash = "b8c167ca7b87852a6f2c68eced2c091a2fbce01df7d52de37042cd15837b2157"


value = ascii_letters + digits + punctuation

# Repeat process
for i in range(1, 4):
    for j in product(value, repeat=i):
        word = "".join(j)
        # Hash the word
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
        print(f"Trying password {word}:{wordlistHash}")
    
        if wordlistHash == passwordHash:
            print(f"Password has been cracked! It was {word}")
            exit()  # Exit the script






























