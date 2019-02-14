if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'sukima/xmledit'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'bradford-smith94/quick-scope'
Plug 'vim-scripts/Smart-Home-Key'
Plug 'chrisbra/SudoEdit.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

set termguicolors
set background=dark
set mouse=a
set noswapfile
set lazyredraw
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=0
set expandtab
set smartindent
set shiftround
set foldmethod=syntax
set hidden
set inccommand=split

highlight Pmenu guibg=brown gui=bold

noremap <silent> <Home> :SmartHomeKey<Return>
inoremap <silent> <Home> <C-o>:SmartHomeKey<Return>

nnoremap <BS> X

augroup filetypes
    autocmd!
    autocmd FileType python setlocal textwidth=100
augroup end

augroup unfolding
    autocmd!
    autocmd BufWinEnter * normal zR
augroup end

nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
inoremap <F9> <C-O>za

map K <Plug>(ale_hover)
map gd <Plug>(ale_go_to_definition)

let g:xml_syntax_folding = 1
let g:syntastic_always_populate_loc_list = 1
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:airline_powerline_fonts = 1
let g:ale_completion_enabled = 1
let g:ale_linters = {'rust': ['rls']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\}
let g:ale_fix_on_save = 1
let g:deoplete#enable_at_startup = 1
