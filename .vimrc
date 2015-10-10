filetype off

let g:python_host_prog='/usr/bin/python2'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'coot/CRDispatcher'
Plugin 'coot/EnchantedVim'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'sukima/xmledit'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'unblevable/quick-scope'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/Smart-Home-Key'

call vundle#end()

filetype plugin indent on

au BufRead,BufNewFile *.txx set filetype=cpp
au BufRead,BufNewFile *.txr set filetype=txr | set lisp
au BufRead,BufNewFile *.tl set filetype=txl | set lisp

syntax on

set noswapfile
set lazyredraw

set ignorecase
set smartcase

set tabstop=4
set shiftwidth=4 " vim's = doesn't like 0

set expandtab
set smartindent

set foldmethod=syntax

noremap <silent> <Home> :SmartHomeKey<CR>
inoremap <silent> <Home> <C-o>:SmartHomeKey<CR>

set viewoptions=cursor

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

au BufWritePre * :%s/\s\+$//e

set clipboard=unnamedplus
set ruler

let g:xml_syntax_folding=1
au BufWinEnter * normal zR

nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
inoremap <F9> <C-O>za

nnoremap <F3> :Autoformat<CR>
vnoremap <F3> :Autoformat<CR>
inoremap <F3> <C-O>:Autoformat<CR>

let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

if $TERM !~ "putty"
    let g:airline_powerline_fonts = 1
endif
