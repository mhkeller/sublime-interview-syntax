Interview Syntax
===

A Sublime Text 2 syntax definition and highlighter meant to help reporters as they conduct interviews.

Using [Markdown](http://dillinger.io/) as a jumping off point, Interview highlights whether certain parts of the conversation are on the record, on background or off the record. 

It looks best with the [Spacegray Eighties](http://github.com/mhkeller/spacegray) theme but it works with any of the [Spacegray family](http://github.com/mhkeller/spacegray). It will work in other color schemes but its aesthetics are not guaranteed. 

## Who's it for

If you already develop in Sublime Text, this can be a useful tool to give more structure and verifiability to interviews you conduct.

If you're a reporter who doesn't program, it can perform the above but also be a useful starting point to familiarize yourself with a text editor.

## What it looks like

Here's an example:

![](https://raw.githubusercontent.com/mhkeller/sublime-interview-syntax/master/assets/example-interview.png?token=AAecOOa9XqdmsGhLC9xLcUHp0V1tgMboks5VEhhYwA%3D%3D)

## How to use it

Save your files as `.interview` or `.vw` and Sublime should handle the rest. It also comes with a handy snippet that will give you an interview template by typing `interview` and then hitting the <kbd>tab</kbd> key, which will give you a file that looks like the example below.

![](https://raw.githubusercontent.com/mhkeller/sublime-interview-syntax/master/assets/start-interview.gif?token=AAecODJHeR9Si23Jhpa2G8msH9d_Kssxks5VEhhawA%3D%3D)

### Styling for on the record, on background or off the record

Generally, the interview has ground rule terms for how the person wants to be attributed. Interviews can get tricky, however, when the interviewee jumps back and forth. As shown in the screenshot above, you can highlight different regions by surrounding them with tick marks ( \` ) and adding either the `on`, `bg` or `off` keywords. 

````
`on
This is on the record
`

`bg
This is on background
`

`off
This is off the record
`
````

### Export to Word document

If you install Pandoc, you can also automatically convert your `.interview` files into Word documents by running <kbd>shift</kbd> <kbd>cmd</kbd> + <kbd>b</kbd>. The output doesn't handle single line breaks super well so if you're exporting, you might want to add an extra line break between lines of text.

You can install pandoc from its [GitHub page](https://github.com/jgm/pandoc/releases/tag/1.13.2). Scroll all the way to the bottom to select your operating system. Or, if you have [homebrew](http://brew.sh) installed, you can run `brew install pandoc`.

### Shortcuts

###### Template - `interview` + <kbd>tab</kbd>

This will prefill your page with the interview template pictured above.

###### Questions — <kbd>cmd</kbd> + <kbd>?</kbd>

This will start a question for you by writing out `// `. This is useful if you think of a question or note to yourself mid-interview. You can turn turn an existing line into a question with this shortcut as well.

###### Block comments — <kbd>option</kbd> <kbd>cmd</kbd> + <kbd>?</kbd>

This will start a block comment (a comment that spans mutliple lines) by writing out `/* */` and placing your cursor in the middle. Same as the question shortcut, you can highlight multiple lines and turn them into a comment block with this shortcut.

###### Spell check — <kbd>F6</kbd>

This is a general Sublime Text shortcut. On a Macbook, trigger this by holding down the <kbd>fn</kbd> key before pressing <kbd>F6</kbd>, otherwise it will just change the keyboard brightness.

## Installation

*You will need to restart Sublime for these changes to take effect.*

### Automatic installation

[Download the .zip](https://github.com/mhkeller/sublime-interview-syntax/archive/master.zip) and double-click `install.command` file. 

### Manual installation 

Copy the `Interview` folder into your Sublime Text Packages directory and add the contents of `base16-eighties.dark.additions.xml` as the last group the last `<array>` of your current syntax highlighter's `.tmTheme` file. For Space Gray Eighties, this is `~/Library/Application Support/Sublime Text 2/Packages/Theme - Spacegray/base16-eighties.dark.tmTheme`.

**Note:** The `base16-eighties.dark.additions.xml` file defines specific colors to the scopes given to on/off/bg selectors. The Interview syntax definition also comes with more generic scopes such as `string.regexp` for information on background. This is to provide some fallback support for color schemes that we don't explicitly write a clunky installer like this one for. It's still advisable to add the custom additions to your `.tmTheme` file however because 1) it ensures that you'll get this nice green / blue / red distinction and it also turns lists from red to orange. That way, every style has a unique color and you won't be confused when your list appears red and you think that part of the discussion was off the record.

## Contributing

If you want to help that would be greatly appreciated! This is my first attempt at making a syntax definition and highlighter. It was moslty written in a plane on the way back from Nicar 15. Check the [issue tracker](https://github.com/mhkeller/sublime-interview-syntax/issues) for areas that could use some help.

### Other formatting

Here's an example of the other types of formatting you can use. 

![](https://raw.githubusercontent.com/mhkeller/sublime-interview-syntax/master/assets/all-formatting.png?token=AAecOLkAVHNNpZZF90wIwmu79OojqJU2ks5VEhhXwA%3D%3D)
