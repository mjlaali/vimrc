" VIM settings

set nocompatible              " be iMproved, required
filetype off                  " required

" =============================================================================
" PLUGINS
" =============================================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" SOLARIZED THEME
Plugin 'altercation/vim-colors-solarized'

" FIXWHITESPACE
" Get rid of white spaces
" usage: :FixWhitespace
Plugin 'bronson/vim-trailing-whitespace'

" Syntax for Markdown
Plugin 'plasticboy/vim-markdown'

" Syntastic, syntax checking
" Plugin 'vim-syntastic/syntastic'

" NERDTREE
" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" NERD COMMENTER
" to comment: <leader>cc
" uncomment : <leader>cu
Plugin 'scrooloose/nerdcommenter'

" Run command in background
" Interaction with tmux inside vim
Plugin 'benmills/vimux'

" GIT
" defacto git plugin
Plugin 'tpope/vim-fugitive'

" Allow autosave
Plugin 'vim-scripts/vim-auto-save'

" YouCompleteMe
" Adding auto-complete feature, use <TAB> to complete an expression
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" =============================================================================
" PLUGIN OPTIONS
" =============================================================================

" SOLARIZED
set background=dark
" config for proper displaying of colors in Screen
colorscheme darkblue

" =============================================================================
" GENERAL SETTINGS
" =============================================================================

" Display Line numbers
set number

" Tab stuff
" see: http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
au FileType python setl sw=2 sts=2 et

" Fix backspace key issue
set backspace=indent,eol,start

" syntax colouring
syntax on

" Set .md as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" =============================================================================
" FUNCTIONS
" =============================================================================

" Switch to window number
" usage: /[window number]
let i = 1
while i <= 9
	execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
	let i = i + 1
endwhile

" Display window number in status line
function! WindowNumber()
	let str=tabpagewinnr(tabpagenr())
	return str
endfunction

set laststatus=2
set statusline=[%{WindowNumber()}]\ %f\ [line:%4l]

" Autosave the buffer whenever it is changed
set autowriteall

" Vimu open ahorizontal panel.
let g:VimuxOrientation = "h"

" Autosave plugin setting
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

source ~/.vimshortcut

