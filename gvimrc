
"colorscheme
colorscheme default

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
let g:NERDCreateDefaultMappings = 1

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



