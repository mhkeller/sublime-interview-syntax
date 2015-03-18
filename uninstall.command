 #!/bin/bash  

echo 'Uninstalling...'
# Remove the Syntax Definition
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Interview
# Replace contents between matching regex lines
sed \ '/Begin Interview Syntax highlighting/,/End Interview Syntax highlighting/d' ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme > original.xml
# Copy settings over
mv original.xml ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Theme\ -\ Spacegray/base16-eighties.dark.tmTheme
echo 'Package successfully uninstalled! You can safely close the Terminal now.'