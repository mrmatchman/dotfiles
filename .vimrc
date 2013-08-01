"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This is .vimrc, Vim configuration file.
" Some settings stolen from Derek Wyatt's (http://www.derekwyatt.org)
" .vimrc, others taken from Drew Neil's Vimcasts (http://vimcasts.org).
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load external modules
"source ~/.vim/syntax/syntax.vim
"source ~/.vim/syntax/tcl.vim
"source ~/.vim/syntax/sh.vim
"source ~/.vim/syntax/vim.vim
"source ~/.vim/syntax/c.vim
"source ~/.vim/syntax/perl.vim
"source ~/.vim/syntax/strace.vim
"
" Set encoding to utf-8
set encoding=utf-8

" To automatically save and restore views for all files: >
au BufWinLeave *.txt mkview
au BufWinEnter *.txt silent loadview

" Set colour scheme
colorscheme pablo

" Always display line numbers
set number

" Don't be compatible with vi
set nocompatible

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
set list

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:»\ ,eol:¬

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on " this doesn't work...
set fileformat=unix
compiler ruby

" Tabstops are 8 spaces
"set ts=8 sts=0 sw=8 noexpandtab 
"set autoindent

" Config for Ruby
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

" Config for Python
set expandtab
set tabstop=4 shiftwidth=4 softtabstop=4
set autoindent

" set the search scan to wrap lines
set wrapscan

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase
" highlight all search results
set hlsearch
" show results even if you haven't finished specifying searching term
set incsearch

" set the forward slash to be the slash of note. Backslashes suck
set shellslash

" Make command line two lines high
set ch=2

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" Set the status line the way Derek's likes it
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way Derek's likes
set guioptions=ac
set guifont=Monospace\ 13

" Ruby stuff
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
"highlight Pmenu ctermbg=237 gui=bold
