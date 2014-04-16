:filetype plugin indent on

"execute pathogen#infect()

"set rtp+=~/.vim/bundle/vundle
"call vundle#rc()

"Bundle 'gmarik/vundle'

let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1

let loaded_matchparen = 1

:syntax on

":set foldmethod=syntax
":set foldlevelstart=20

:set ttyfast
:set lazyredraw

":set mouse=a
":set ttymouse=xterm2

:set virtualedit=all
:set hlsearch
:set incsearch

:set tabstop=4
:set shiftwidth=4

:set smarttab
:set expandtab

function ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction

noremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <Esc>:call ExtendedHome()<CR>i

":map <Home> ^
":imap <Home> <Esc>^i

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

:start

