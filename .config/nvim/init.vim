let g:python_host_prog='/usr/bin/python2'

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'Chiel92/vim-autoformat'
Plug 'coot/CRDispatcher'
Plug 'coot/EnchantedVim'
Plug 'derekwyatt/vim-fswitch'
Plug 'haya14busa/incsearch.vim'
Plug 'majutsushi/tagbar'
" Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'sukima/xmledit'
Plug 'szw/vim-ctrlspace'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'bradford-smith94/quick-scope'
" Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/Smart-Home-Key'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'chrisbra/SudoEdit.vim'
call plug#end()

augroup filetypes
    autocmd!
    autocmd BufRead,BufNewFile *.txx set filetype=cpp
    autocmd BufRead,BufNewFile *.txr set filetype=txr | set lisp
    autocmd BufRead,BufNewFile *.tl set filetype=txl | set lisp
augroup END

au FileType python setlocal textwidth=100

set termguicolors
set background=dark
set mouse=a

set noswapfile
set lazyredraw

set ignorecase
set smartcase

set tabstop=4
set shiftwidth=4 " = doesn't like sw=0
set expandtab
set smartindent
set shiftround

set foldmethod=syntax

noremap <silent> <Home> :SmartHomeKey<CR>
inoremap <silent> <Home> <C-o>:SmartHomeKey<CR>

nnoremap <BS> X

set viewoptions=cursor

set hidden

set inccommand=split

augroup session
    autocmd!
    autocmd BufWinLeave * silent! mkview
    autocmd BufWinEnter * silent! loadview
augroup END

augroup whitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
augroup END

let g:xml_syntax_folding = 1

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
