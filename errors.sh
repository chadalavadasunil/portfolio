#!/bin/bash

secret='shhh' # Don't tell anyone!
correct=false

read -s -p "What's the secret code? "

#if the user types in the correct secret, tell them they got it right!
if [ "$secret" = "$REPLY1" ]; then
    echo "You got it right!"
    correct=true
else
    echo "You got it wrong :("
fi

case $correct in
    false)
        echo "Go Away!" #people who get it wrong need to be told to go away!
        ;;
    true)
        echo "You have unlocked the secret menu!"
        #TODO: add a secret menu for people in the know.
        ;;
esac
