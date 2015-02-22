vim-configuration

my vim configuration

## Configuration

* Simple vim improvement
* arrow disable in normal mode. (To force myself to use hjkl)
* in edition mode, type jj to return in normal mode. 
* Clipboard copy and paste : <leader>y, <leader>p (<leader> = \ )

## Installation

* Simply clone the repo into your .vim folder
* move/link the .vimrc  to ~/.vimrc

##Plugins added:

### Pathogen
Vim plugin manager.

###Alternate
Alternate provide a simple way to switch between your header and your implementation file. (.h <-> .c | .hpp <->.cpp) for instance.

Main commands are :

* :A switches to the header file corresponding to the current file being edited (or vise versa)
* :AS splits and switches
* :AV vertical splits and switches
* :AT new tab and switches
* :AN cycles through matches 

###Vim-multiple-cursor

Bring the sublime-text multiple cursor selection into vim.

Please see [vim-multiple-cursor](https://github.com/terryma/vim-multiple-cursors) or at least its how-to-use that is following.

Out of the box, all you need to know is a single key Ctrl-n. Pressing the key in Normal mode highlights the current word under the cursor in Visual mode and places a virtual cursor at the end of it. Pressing it again finds the next ocurrence and places another virtual cursor at the end of the visual selection. If you select multiple lines in Visual mode, pressing the key puts a virtual cursor at every line and leaves you in Normal mode.

After you've marked all your locations with Ctrl-n, you can change the visual selection with normal Vim motion commands in Visual mode. You could go to Normal mode by pressing v and wield your motion commands there. Single key command to switch to Insert mode such as c or s from Visual mode or i, a, I, A in Normal mode should work without any issues.

At any time, you can press <Esc> to exit back to regular Vim.


###NerdCommenter
An easy to comment portion of code. It is langage independant (provide the appropriate letter to comment)
Main commands are:

* <leader> c <space> : switch between commented and not commented

###NerdTree

A file tree.

* <ctrl> d : toogle the file tree panel

###Snipmate
Boilerplate code.

Simply begin some code structure, press <tab> and it is completed automaticly.

###Syntastic
Check syntaxe errors.

It use a wide variety of plugins (jsHint, gcc, +++) and detect them automaticly.

Main commands are:

* <ctrl> C : check the code.

