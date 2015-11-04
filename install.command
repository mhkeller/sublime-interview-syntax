 #!/bin/bash  

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
SUBLIME_PATH=$(ls -d ~/Library/Application\ Support/* | grep 'Sublime Text')
SUBLIME_VERSION="${SUBLIME_PATH: -1}"

# Delete any existing
rm -rf ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Interview
# Copy `Interview` directory to the `Application Support` folder
cp -R $DIR/Interview ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/

if grep -q 'Begin Interview Syntax highlighting' ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme; then
	echo 'The Interview package is already installed.'
else
	echo 'Installing Interview...'
	# Make a blank file to hold our styles
	touch $DIR/new-style.tmp
	# And to hold some scraps
	touch $DIR/head.tmp
	touch $DIR/tail.tmp
	# Add everything but the last five lines, opening up the settings array
	python -c 'import sys;print "".join(sys.stdin.readlines()[0:-5]),' <  ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme > $DIR/head.tmp
	# Put the lines we cut out into their own file
	tail -n 5 ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme > $DIR/tail.tmp
	# Combine them all
	cat $DIR/head.tmp $DIR/base16-eighties.dark.additions.xml $DIR/tail.tmp > $DIR/new-style.tmp

	# Delete the original
	rm ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme
	# Make what we made the new original
	mv $DIR/new-style.tmp ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme
	# Get rid of tmp files
	rm $DIR/head.tmp
	rm $DIR/tail.tmp

	# All done
	echo 'Interview successfully installed! You can safely close the Terminal now.'
fi

