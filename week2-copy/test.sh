#!/bin/bash

read -p "Hello, please type the name of the folder you would like to create: " DIRECTORY

echo ""

# check if directory already exits

if [[ -d $DIRECTORY ]]

then 

        echo "$DIRECTORY already exists" 

        echo ""

        # ask user if you want a copy of the directory made

        read -p "Would you like to create a copy of this directory? [Yes/Y/y] " copy

        # if yes then add copy of the directory

        if [[ $copy == yes || $copy == y || $copy == Y ]]

        then

                # get current date and time to append to folder

                now=$(date +"%d%m%Y:%H:%M")

                # create new directory

                echo "[Drsp0ck88]" | sudo -S cp -r "$DIRECTORY" "$PWD/$DIRECTORY-${now}"

                echo ""

                echo "A copy of your directory has been made. New directory is $DIRECTORY-${now}"

                # display the directory

                echo ""

                ls -al

                echo ""

        else

                echo ""

                echo "You did not want a copy of this directory made."

                echo ""

        fi

else

        # create the new directory

        echo "[Drsp0ck88]" | sudo -S mkdir $DIRECTORY

        # display the directory

        echo ""

        echo "Your new directory $DIRECTORY has been added."

        echo ""

        ls -al

        echo ""

fi

exit 0