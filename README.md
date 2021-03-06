dotfiles
========

bashrc
------
* Nothing special, self explainatory

vimrc
-----
Based on [@fatih](http://www.github.com/fatih/dotfiles)'s vimrc.

Read the plugins docs from their repos respectively probably there is more stuff
that I don't use. These are the plugins and mappings that I use.

### Mappings

* \<leader\> is ','

* ,w write override
* ,q quit
* ,\<Space\> disable search highlighting. Enabled with next search
* jk exit to normal mode

* ,hu revert changes - git gutter
* ,hs stage changes - git gutter
* ,hp see changes - git gutter

* \<C-p\> open most recent files - Ctrl-p
* \<C-f\> open files buffer while Ctrl-p window is open - Ctrl-p

* ,g toggle - gundo tree

* ,cc comment out (current line / selected lines) - nerd-commenter
* ,cu uncomment line (current line / selected lines) - nerd-commenter
* ,c\<Space\> toggle comments - nerd-commenter

* ,,w toggle easymotion

* ,n toggle nerdtree
* ,r find on nerdtree

* \>, move argument to right - argumentative
* \<, move argument to left - argumentative

* = indent selected rights
* =G indent lines from selected to the end of the file
* =gg indent lines from selected to the start of the file

* ,a start ack/ag with the word under the cursor
* ,s start ack/ag with the latest search

* ,ig toggle pijamas mode - indent lines

* \<C-j\> move focus to split window respectively to the window with these
* \<C-k\>
* \<C-h\>
* \<C-l\>

* gr to go on previous tab
* gt to go on next tab

* \<F2\> Syntastic check
* \<F5\> to go to definition of the word under the cursor
* \<F6\> to context aware rename the variable under the cursor

* ,0 to show only errors on syntastic
* ,9 show all errors and warnings on syntastic

### Plugins
* *Vundle*: to handle plugins
* *ack.vim*: ack/ag in vim
* *ctrlp*: \<C-p\> to open most recent files, \<C-f\> \<C-b\>to change mode to search on files.
* *gundo*: see local change history in a tree!!! Never lost a thing again.
* *nerdcommenter*: quickly comment out lines.
* *vim-easymotion*: jump around lines and words much quicker.(If you use vimium or
  vimfx like plugin on your web browser it is similar to their follow link feature)
* *tagbar*: ctags plugin.
* *vim-fugitive*: I only use it for :Gblame, basically can do git stuff on vim.
* *nerd-tree*: your file manager. press ? while nerdtree on focused. Tons of
  great features.
* *vim-colors-solarized*: solarized theme for vim. Do not forget to change your
  contrast settings especially when using dark version.
* *syntastic*: syntax checker, compatible with a lot of stuff. RTM for more.
* *vim-argumantative*: argument mover .... I mean yeah.... :D
* *delimitMate*: auto close braces, brackets etc.
* *vim-json*: json syntax hightlighting
* *vim-easy-align*: overpowered indentation helper, makes it feels like using a
  sledgehammer for hanging a picture to the wall.
* *vim-javascript*: javascript syntax and indent plugin
* *YouCompleteMe*: omnicompletion engine, my current setup slows downs buffer
  loads a lot be. Consult its own docs for more info.
* *vim-indent-guides*: it is sometimes useful but mostly makes it looks like you
  code on your fathers pijamas. Off by default. Toggled by command
* *vim-javascript-syntax*: More enhanced JS syntax highlighting
* *vim-coffee-script*: coffee syntax and highlighting
* *html5.vim*: html5 support
* *vim-gitgutter*: see whats changed on git near the line numbers. Syntastic will
  override it if there is an syntax error/warning.
* *vim-angular*: support for angular only for highlighting
* *javascript-libraries-syntax*: name tells what it does.
* *vim-jsx*: jsx syntax support
* *vim-airline*: fancy status bar
* *vim-airline-themes*: fancy status bar ... themes
* *ultisnips* snippet plugin
* *vim-snippets* another snippet plugin
* *vim-es6* es6 plugin thingie
* *cobalt2-vim-theme* hehe
* *MatchTagAlways* HTML tag highlight - move with %
