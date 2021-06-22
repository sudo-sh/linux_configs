
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


" NERDTree
"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
":NERDTreeFocus                                                  *:NERDTreeFocus*
"    Opens (or reopens) the NERDTree if it is not currently visible;
"    otherwise, the cursor is moved to the already-open NERDTree.
":NERDTree [<start-directory> | <bookmark>]                           *:NERDTree*
"    Opens a fresh NERDTree. The root of the tree depends on the argument
"    given. There are 3 cases: If no argument is given, the current directory
"    will be used.  If a directory is given, that will be used. If a bookmark
"    name is given, the corresponding directory will be used.  For example: >
"
"
":NERDTreeToggle [<start-directory> | <bookmark>]               *:NERDTreeToggle*
"    If a NERDTree already exists for this tab, it is reopened and rendered
"    again. If <start-directory> or <bookmark> is given, the root of NERDTree
"    is set to that path. If no NERDTree exists for this tab then this command
"    acts the same as the |:NERDTree| command.
"
"
":NERDTreeFind [<path>]                                           *:NERDTreeFind*
"    Without the optional argument, find and reveal the file for the active
"    buffer in the NERDTree window.  With the <path> argument, find and
"    reveal the specified path.
"
"    Focus will be shifted to the NERDTree window, and the cursor will be
"    placed on the tree node for the determined path.  If a NERDTree for the
"    current tab does not exist, a new one will be initialized.
"




"o........Open files, directories and bookmarks......................|NERDTree-o|
"go.......Open selected file, but leave cursor in the NERDTree......|NERDTree-go|
"         Find selected bookmark directory in current NERDTree
"t........Open selected node/bookmark in a new tab...................|NERDTree-t|
"T........Same as 't' but keep the focus on the current tab..........|NERDTree-T|
"i........Open selected file in a split window.......................|NERDTree-i|
"gi.......Same as i, but leave the cursor on the NERDTree...........|NERDTree-gi|
"s........Open selected file in a new vsplit.........................|NERDTree-s|
"gs.......Same as s, but leave the cursor on the NERDTree...........|NERDTree-gs|
"<CR>.....User-definable custom open action.......................|NERDTree-<CR>|
"O........Recursively open the selected directory....................|NERDTree-O|
"x........Close the current nodes parent.............................|NERDTree-x|
"X........Recursively close all children of the current node.........|NERDTree-X|
"e........Edit the current directory.................................|NERDTree-e|
"

