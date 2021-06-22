
" Map the leader to Space, now using space CC will comment
"
"

let mapleader = "\<Space>"

"colorscheme
colorscheme desert

"use VIm settings compared to VI settings

set nocompatible

"Turn on line number
set number

"allow backspacing over everything in insert mode.

set backspace=indent,eol,start

" Set indenting to hard tabs (nospaces and use 4 chars)
set shiftwidth=4
set tabstop=4
set autoindent		" always set autoindenting on
set smartindent

"if has("vms")
"  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file
"endif

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

set clipboard=unnamedplus
"to make all yanking/deleting operations automatically copy to the system clipboard

"pathogen include 
execute pathogen#infect()
syntax on
filetype plugin indent on

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "level": "warnings" }

"colour the search hits 
hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi Search guibg=peru guifg=wheat
set hlsearch

"Nerd Commentor
"
filetype plugin on

" Create default mappings
#let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


"Nerd Commenter Help
"
"Leader for Nercommenter is \
"Most of the following mappings are for normal/visual mode only. The
"|NERDComInsertComment| mapping is for insert mode only.
"
"[count]<leader>cc |NERDComComment|
"Comment out the current line or text selected in visual mode.
"
"
"[count]<leader>cn |NERDComNestedComment|
"Same as <leader>cc but forces nesting.
"
"
"[count]<leader>c<space> |NERDComToggleComment|
"Toggles the comment state of the selected line(s). If the topmost selected
"line is commented, all selected lines are uncommented and vice versa.
"
"
"[count]<leader>cm |NERDComMinimalComment|
"Comments the given lines using only one set of multipart delimiters.
"
"
"[count]<leader>ci |NERDComInvertComment|
"Toggles the comment state of the selected line(s) individually.
"
"
"[count]<leader>cs |NERDComSexyComment|
"Comments out the selected lines ``sexily''
"
"
"[count]<leader>cy |NERDComYankComment|
"Same as <leader>cc except that the commented line(s) are yanked first.
"
"
"<leader>c$ |NERDComEOLComment|
"Comments the current line from the cursor to the end of line.
"
"
"<leader>cA |NERDComAppendComment|
"Adds comment delimiters to the end of line and goes into insert mode between
"them.
"
"
"|NERDComInsertComment|
"Adds comment delimiters at the current cursor position and inserts between.
"Disabled by default.
"
"
"<leader>ca |NERDComAltDelim|
"Switches to the alternative set of delimiters.
"
"
"[count]<leader>cl
"[count]<leader>cb    |NERDComAlignedComment|
"Same as |NERDComComment| except that the delimiters are aligned down the
"left side (<leader>cl) or both sides (<leader>cb).
"
"
"[count]<leader>cu |NERDComUncommentLine|
"Uncomments the selected line(s). 
"





" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

