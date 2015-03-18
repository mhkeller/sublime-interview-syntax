Interview Syntax
===

A Sublime Text syntax definition and highlighter meant to help reporters as they conduct interviews.

Using [Markdown](http://dillinger.io/) as a jumping off point, Interview highlights whether certain parts of the conversation are on the record, on background or off the record. 

For now it just works with the [Spacegray Eighties](http://github.com/mhkeller/spacegray) Sublime theme but I am working on a version for Monokai.

## What it looks like

Here's an example

![](samle interview image tk)

## How to use it

Save your files as `.interview` or `.vw` and Sublime should handle the rest. It also comes with a handy snippet that will give you an interview template by typing `interview` and then hitting the tab key. It will give you a file that looks like the example below.

![](interview template gif)

### Styling for on the record, on background or off the record

Generally, the interview has ground rule terms for how the person wants to be attributed. Interviews can get tricky, however, when the interviewee jumps back and forth. As shown in the screenshot above, you can highlight different regions by surrounding them with ``` marks and adding either the `on`, `bg` or `off` keywords.

### Export to Word document

If you install Pandoc, you can also automatically convert your `.interview` files into Word documents by running <kbd>Shift</kbd> <kbd>cmd</kbd> + <kbd>b</kbd>. The output doesn't handle single line breaks super well so if you're exporting, you might want to add an extra line break between lines of text.

You can install pandoc from its [GitHub page](https://github.com/jgm/pandoc/releases/tag/1.13.2). Scroll all the way to the bottom to select your operating system. Or, if you have homebrew installed, you can run `brew install pandoc`.

### Other formatting

Here's an example of the other types of formatting you can use. 

![](all formatting tk)

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

