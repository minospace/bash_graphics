#!/bin/bash

echo "welcome to the install script for bash graphics"
echo "this script will install bash graphics"
echo "you can stop this script by pressing ctrl+c"
read -p "press enter to continue or ctrl+c to stop"

url="https://drive.google.com/uc?id=1t2lxhD7fXKa2gLN-sURc5zENDod-DB66"

directory="/Users/$USER/coding"

echo -e "checking if directory $directory exists"
echo -e "if not, creating directory $directory"
mkdir -p "$directory"

echo -e "downloading bash graphics"
curl -L -o "$directory/bash_graphics.zip" "$url"

echo -e "unzipping bash graphics"
unzip "$directory/bash_graphics.zip" -d "$directory"

echo -e "removing zip file and __MACOSX folder"
rm -rf "/Users/$USER/coding/__MACOSX"
rm -rf "/Users/$USER/coding/Bash_Graphics.zip"

echo -e "bash graphics is now installed"
echo -e "navigating to bash graphics directory"
cd "$directory"
echo -e "showing contents of $directory"
ls
echo -e "navigating to bash_graphics directory"
cd "bash_graphics"
echo -e "showing contents of bash_graphics directory"
ls

echo -e "if you see 'main.sh', permission.sh and 'graphics' you are good to go"

read -p "press enter to give bash graphics permissions, this is an essantial step"

bash permission.sh
echo -e "bash graphics now has the correct permissions"
