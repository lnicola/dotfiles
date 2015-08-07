:filetype plugin indent on

"execute pathogen#infect()

"set rtp+=~/.vim/bundle/vundle
"call vundle#rc()

"Bundle 'gmarik/vundle'

let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1

let loaded_matchparen = 1

au BufRead,BufNewFile *.txx set filetype=cpp

:syntax on

set background=dark
set t_Co=256
let g:solarized_termcolors=256
"colorscheme solarized

":set foldmethod=syntax
":set foldlevelstart=20

:set ttyfast
:set lazyredraw

":set virtualedit=all
:set hlsearch
:set incsearch

:set tabstop=4
:set shiftwidth=4

:set smarttab
:set expandtab

:set noeb vb t_vb=

function ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction

noremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <Esc>:call ExtendedHome()<CR>i

function ClangFormat()
    let result=system("clang-format", join(getline(1, "$"), "\n"))
    %delete
    put =result
    normal! gg
endfunction

map <C-K> :call ClangFormat()<CR>
imap <C-K> <ESC>:call ClangFormat()<CR>i

":map <Home> ^
":imap <Home> <Esc>^i

"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

:au BufRead,BufNewFile *.txr set filetype=txr | set lisp
:au BufRead,BufNewFile *.tl set filetype=txl | set lisp

autocmd BufWritePre * :%s/\s\+$//e

set mouse=a
"set ttymouse=xterm2

set clipboard=unnamedplus
set ruler

"noremap <Down> <C-o>gj
"inoremap <Up> <C-o>gk

"inoremap <silent> <Esc> <C-O>:stopinsert<CR>

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"

:start

