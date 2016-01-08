let g:python_host_prog='/usr/bin/python2'

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'coot/CRDispatcher'
Plugin 'coot/EnchantedVim'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'haya14busa/incsearch.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sukima/xmledit'
Plugin 'szw/vim-ctrlspace'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'unblevable/quick-scope'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/Smart-Home-Key'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()

filetype plugin indent on

augroup filetypes
    autocmd!
    autocmd BufRead,BufNewFile *.txx set filetype=cpp
    autocmd BufRead,BufNewFile *.txr set filetype=txr | set lisp
    autocmd BufRead,BufNewFile *.tl set filetype=txl | set lisp
augroup END

syntax on

set noswapfile
set lazyredraw

set ignorecase
set smartcase

set tabstop=4
set shiftwidth=4 " = doesn't like sw=0

set expandtab
set smartindent

set foldmethod=syntax

noremap <silent> <Home> :SmartHomeKey<CR>
inoremap <silent> <Home> <C-o>:SmartHomeKey<CR>

nnoremap <BS> X

set viewoptions=cursor

set hidden

augroup session
    autocmd!
    autocmd BufWinLeave * silent! mkview
    autocmd BufWinEnter * silent! loadview
augroup END

augroup whitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
augroup END

set clipboard=unnamedplus
set ruler

let g:xml_syntax_folding=1

augroup unfolding
    autocmd!
    autocmd BufWinEnter * normal zR
augroup END

nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
inoremap <F9> <C-O>za

nnoremap <F3> :Autoformat<CR>
vnoremap <F3> :Autoformat<CR>
inoremap <F3> <C-O>:Autoformat<CR>

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:airline_powerline_fonts = 1
