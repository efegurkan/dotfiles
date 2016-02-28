"Vundle things
set nocompatible "Use Improved
filetype off     "Required for Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle manages itself
"Required for Vundle
Plugin 'gmarik/vundle'

Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'derekwyatt/vim-scala'
Plugin 'PeterRincker/vim-argumentative'
Plugin 'Raimondi/delimitMate'
Plugin 'helino/vim-json'
Plugin 'junegunn/vim-easy-align'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'gre/play2vim'
Plugin 'othree/html5.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'burnettk/vim-angular'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'vim-scripts/a.vim'

call vundle#end()

"filetype stuff
filetype on
filetype plugin on
filetype plugin indent on "Required for Vundle

set encoding=utf-8
set term=xterm-256color
set t_Co=256
set cindent
set autoindent
set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set expandtab

set showmatch
set incsearch
set hlsearch
set smartcase
set ignorecase

set mouse=a

if version >= 703
set ruler
set wildmenu
set wildmode=list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,.DS_Store,*.jpg,*.png,*.gif,*.bak,*.exe,*.so,*.la,*.out,*.pyc,*.swp,*/.build/*,*/.idea/*,*/node_modules/*
endif
set completeopt=menuone,longest
set history=100
set noerrorbells
set gdefault
set number

set ttyfast
set showcmd
set showmode
set encoding=utf-8
set autowrite
set cmdheight=1
set laststatus=2

set splitright
set splitbelow
set noswapfile


set fileformats=unix,dos,mac

"Enable unde even if the file is closed
set undofile
set undodir=/tmp
set nobackup

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" -[ FileTypes ]-
" mail
autocmd FileType mail,human set formatoptions+=t textwidth=80

" markdown
autocmd FileType markdown set textwidth=80
autocmd FileType markdown set nocindent "Wraping fix for braces
autocmd FileType markdown set expandtab "Use spaces for tabs, a requirement by markdown
autocmd FileType markdown set shiftwidth=4

autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufWritePre *.go Fmt

autocmd BufRead,BufNewFile *.coffee set expandtab shiftwidth=2 softtabstop=2

" Omni completion for js and coffee
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType coffee set omnifunc=javascriptcomplete#CompleteJS

"Quickfix window
" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for
" quickfix buffers.  Note: Normally, :cwindow jumps to the quickfix window if
" the command opens it (but not if it's already open). However, as part of the
" autocmd, this doesn't seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" We'll use it for settings that should apply only to one OS (like Linux)
let os=substitute(system('uname'), '\n', '', '')


" ------------------------------------------"
" Color and Syntax                          "
" ------------------------------------------"

syntax enable                   " syntax formatting for languages
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"indent guide
" Eslint is more useful in general
" leader ig to toggle
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2
hi IndentGuidesOdd  ctermbg=darkgrey
hi IndentGuidesEven ctermbg=lightgrey


" Color Column (only on insert)
if exists("&colorcolumn")
    autocmd InsertEnter * set colorcolumn=80
    autocmd InsertLeave * set colorcolumn=""
endif


" ------------------------------------------"
" Mappings                                  "
" ----------------------------------------- "

" This comes first, because we have mappings that depend on leader
" With a map leader it's possible to do extra key combinations
" i.e: <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Some useful quickfix shortcuts
":cc      see the current error
":cn      next error
":cp      previous error
":clist   list all errors
map <C-n> :cn<CR>
map <C-m> :cp<CR>

" Remove search hilight
nnoremap <leader><space> :nohlsearch<CR>


" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

" Just go out in insert mode
imap jk <ESC>l

" Act like D and C
nnoremap Y y$

" gt to next tab
" gr to previous tab
map gr gT


" ----------------------------------------- "
" Plugin configs
" ----------------------------------------- "

" ack
"let g:ackprg="ack --column"
let g:ackprg="ag --nogroup --nocolor --column"
noremap <Leader>a :Ack! <cword><cr>
noremap <Leader>s :AckFromSearch <cr>

" ctrlp
" Read documentation, some of these settings overrides others
let g:ctrlp_cmd = 'CtrlPMRU'			" Open it in most recenlty used mode (the most important option everyone want!)
let g:ctrlp_working_path_mode = 'ra'	" search for nearest ancestor like .git, .hg, and the directory of the current file
let g:ctrlp_match_window_bottom = 0		" show the match window at the top of the screen
let g:ctrlp_max_height = 10				" maxiumum height of match window
let g:ctrlp_switch_buffer = 'Et'		" jump to a file if its open already
let g:ctrlp_use_caching = 1				" enable caching
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp' "chache dir
let g:ctrlp_clear_cache_on_exit = 0     "donr clear cache everytime we exit vim
let g:ctrlp_show_hidden = 1				" show me dotfiles
let g:ctrlp_mruf_max = 250				" number of recenytly opened files
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\(node_modules|target)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


"gundo
nnoremap <leader>g :GundoToggle<CR>

" vim-nerdtree
nmap <leader>n :NERDTreeToggle <CR>
" scroll to current file on nerdtree
map <leader>r :NERDTreeFind<cr>
let NERDTreeChDirMode=1

" tagbar
nmap <leader>b :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" powerline
let g:Powerline_symbols = 'fancy'

" syntactic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

" ag vim search thing, start from current dir
let g:ag_working_path_mode="r"


"relative number
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

"you can just remap the key for toggling.
nnoremap <C-a> :call NumberToggle()<cr>

" JS Libs Syntax
let g:used_javascript_libs = 'lodash,angularjs,angularui,angularuirouter,react,chai'

" Vim-jsx
" If you use jsx in .js files set this 0
let g:jsx_ext_required = 0

"show function name, forks fine for c/c++ taken from LibreOffice wiki
" works fine for getting which react component you are in
function! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfunction
map f :call ShowFuncName() <CR>

" Remove all trailing whitespace when saving
" See http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * :%s/\s\+$//e

