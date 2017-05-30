"Make Vim more useful, uses Vim settings rather than Vi settings. Must be first
set nocompatible

" Set leader key
let mapleader=" "

execute pathogen#infect()
" Enable syntax highlighting indentig
syntax enable
filetype indent plugin on


" Setting Color theme
set background=dark
colorscheme solarized

" Set OS spesific options
if has("win32")
    " Set font in gui Vim
    set guifont=Consolas:h12
    " swap and undo dirs
    if has("gui")
        colorscheme pencil
        set background=light
        set lines=200 columns=110
    endif
    set backupdir=$HOME\vimfiles\backups
    set directory=$HOME\vimfiles\swaps
    if exists("&undodir")
        set undodir=$HOME\vimfiles\undo
    endif
else 
    if has ("unix")
        set guifont=Monaco:h12

        " Centralize backups, swapfiles and undo history
        set backupdir=~/.vim/backups
        set directory=~/.vim/swaps
        if exists("&undodir")
            set undodir=~/.vim/undo
        endif
    endif
endif

" Set relative number with line number on focus line
setl rnu
set nu

" Function for switching line numbering optins, toggle with ctrl-n
nn <C-n> :call ToggleNumber()<CR>
fun! ToggleNumber() "{{{
	if exists('+relativenumber')
		:exec &nu==&rnu? "setl nu!" : "setl rnu!"
	else
		setl nu! 
	endif
endf "}}} Switch between absolute and relative numbering

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Use OS clipboard
set clipboard=unnamed

" Allow backspace in insert mode
set backspace=indent,eol,start

" Reload files changed outside vim
set autoread

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden


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

" open buffer list wit leader-b
nnoremap <Leader>b :ls<CR>:b<Space>


" Setting status line (with air-line)
set laststatus=2

" ALIASES
" converts lowercase word to uppercase with ctrl-x c
inoremap <C-x>c <esc>bgUWea

" Clear search highlighting with space key
nnoremap <Space> :noh<cr>

" GUI Options 
set go-=r "remove scrollbar
set guioptions-=T  "remove toolbar


" Save and quit with leader + d
map <Leader>d :wq<cr>

" Save with leader + s
map <Leader>s :w<cr>

set wrap
set linebreak
set nolist

" Scroll with mouse
set mouse=a
