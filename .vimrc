"Make Vim more useful, uses Vim settings rather than Vi settings. Must be first
set nocompatible

" Set relative number with line number on focus line
setl rnu
set nu

" Function for switching line numbering optins, toggle witn ctrl-n
nn <C-n> :call ToggleNumber()<CR>
fun! ToggleNumber() "{{{
	if exists('+relativenumber')
		:exec &nu==&rnu? "setl nu!" : "setl rnu!"
	else
		setl nu! 
	endif
endf "}}} Switch between absolute and relative numbering

" Use OS clipboard
set clipboard=unnamed

" Allow backspace in insert mode
set backspace=indent,eol,start

" Reload files changed outside vim
set autoread

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Enable syntax highlighting
syntax enable

filetype indent plugin on

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Highlight searches
set hlsearch

" Ignore case of searches if no upper case in search, * search stays normal
set ignorecase
set smartcase

" Highlight dynamically as pattern is typed
set incsearch

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Setting tab properties
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on

" set tab properties for html and js files
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" javascript plugin
let g:javascript_plugin_jsdoc = 1

" Options in command line tab-completion
set wildmenu

" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

" Setting Color theme
set background=dark
colorscheme solarized

" Setting status line (with air-line)
set laststatus=2

" ALIASES
" converts lowercase word to uppercase with ctrl-x c
inoremap <C-x>c <esc>bgUWea

" Clear search highlighting with space key
nnoremap <Space> :noh<cr>

" Removes scroolbar on gui Vim
set go-=r

" Set font in gui Vim
set guifont=Monaco:h12
"

" Set leader key
let mapleader=" "

" Save and quit with leader + d
map <Leader>d :wq<cr>

" Save with leader + s
map <Leader>s :w<cr>
