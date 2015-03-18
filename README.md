Interview Syntax
===

A Sublime Text syntax definition and highlighter meant to help reporters as they conduct interviews.

Using [Markdown](http://dillinger.io/) as a jumping off point, Interview highlights whether certain parts of the conversation are on the record, on background or off the record. 

For now it just works with the [Spacegray Eighties](http://github.com/mhkeller/spacegray) Sublime theme but I am working on a version for Monokai.

## What it looks like

Here's an example:

![](https://raw.githubusercontent.com/mhkeller/sublime-interview-syntax/master/assets/example-interview.png?token=AAecOOa9XqdmsGhLC9xLcUHp0V1tgMboks5VEhhYwA%3D%3D)

## How to use it

Save your files as `.interview` or `.vw` and Sublime should handle the rest. It also comes with a handy snippet that will give you an interview template by typing `interview` and then hitting the <kb>tab</kbd> key. It will give you a file that looks like the example below.

![](https://raw.githubusercontent.com/mhkeller/sublime-interview-syntax/master/assets/start-interview.gif?token=AAecODJHeR9Si23Jhpa2G8msH9d_Kssxks5VEhhawA%3D%3D)

### Styling for on the record, on background or off the record

Generally, the interview has ground rule terms for how the person wants to be attributed. Interviews can get tricky, however, when the interviewee jumps back and forth. As shown in the screenshot above, you can highlight different regions by surrounding them with tick marks — \` — marks and adding either the `on`, `bg` or `off` keywords.

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

If you install Pandoc, you can also automatically convert your `.interview` files into Word documents by running <kbd>Shift</kbd> <kbd>cmd</kbd> + <kbd>b</kbd>. The output doesn't handle single line breaks super well so if you're exporting, you might want to add an extra line break between lines of text.

You can install pandoc from its [GitHub page](https://github.com/jgm/pandoc/releases/tag/1.13.2). Scroll all the way to the bottom to select your operating system. Or, if you have homebrew installed, you can run `brew install pandoc`.

### Other formatting

Here's an example of the other types of formatting you can use. 

![](https://raw.githubusercontent.com/mhkeller/sublime-interview-syntax/master/assets/all-formatting.png?token=AAecOLkAVHNNpZZF90wIwmu79OojqJU2ks5VEhhXwA%3D%3D)

### Shortcuts

The most useful shortcut is the `interview` + <kbd>Tab</kbd> snippet, which will prefill your page with the interview template pictured. 

The other nice one is <kbd>cmd</kbd> + <kbd>?</kbd>, which will start a comment for you. This one is useful if you think of a question or note to yourself mid-interview — hit <kbd>cmd</kbd> + <kbd>?</kbd> and start typing.

If you want a block comment (a comment that spans mutliple lines) the shortcut is <kbd>option</kbd> <kbd>cmd</kbd> + <kbd>?</kbd>

## Installation

**You will need to restart Sublime for these changes to take effect.**

### Automatic installation

Double-click `install.command` file. 

### Manual installation 

Copy the `Interview` folder into your Sublime Text Packages directory and add the contents of `base16-eighties.dark.additions.xml` as the last group the last `<array>` of your current syntax highlighter's `.tmTheme` file. For Space Gray Eighties, this is `~/Library/Application Support/Sublime Text 2/Packages/Theme - Spacegray/base16-eighties.dark.tmTheme`

## Contributing

If you want to help that would be greatly appreciated! This is my first attempt at making a syntax definition and highlighter. It was moslty written in a plane on the way back from Nicar 15. Check the [issue tracker](https://github.com/mhkeller/sublime-interview-syntax/issues) for areas that could use some help.
