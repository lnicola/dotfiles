filetype off

let g:python_host_prog='/usr/bin/python2'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-commentary'
Plugin 'coot/CRDispatcher'
Plugin 'coot/EnchantedVim'
Plugin 'sukima/xmledit'
Plugin 'rhysd/vim-clang-format'
Plugin 'Valloric/YouCompleteMe'

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
set shiftwidth=0
set expandtab
set smartindent

set foldmethod=syntax

function ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction

noremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <C-o>:call ExtendedHome()<CR>

au BufWinLeave * mkview
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

let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1

if $TERM !~ "putty"
    let g:airline_powerline_fonts = 1
endif
