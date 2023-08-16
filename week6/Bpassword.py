#!/usr/bin/python3
from string import ascii_letters, digits, punctuation
from itertools import product

value = ascii_letters + digits + punctuation

for i in range(1, 4):
    for j in product(value, repeat=i):
        word = "".join(j)
        with open("password.txt", "a") as p:
            p.write(word)
            p.write("\n")

