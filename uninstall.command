 #!/bin/bash  

SUBLIME_PATH=$(ls -d ~/Library/Application\ Support/* | grep 'Sublime Text')
SUBLIME_VERSION="${SUBLIME_PATH: -1}"

echo 'Uninstalling Sublime Syntax Highlighter...'
# Remove the Syntax Definition
rm -rf ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Interview
# Replace contents between matching regex lines
sed \ '/Begin Interview Syntax highlighting/,/End Interview Syntax highlighting/d' ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme > original.xml
# Copy settings over
mv original.xml ~/Library/Application\ Support/Sublime\ Text\ $SUBLIME_VERSION/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme
echo 'Package successfully uninstalled! You can safely close the Terminal now.'