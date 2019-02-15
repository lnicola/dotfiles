if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'sukima/xmledit'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'bradford-smith94/quick-scope'
Plug 'vim-scripts/Smart-Home-Key'
Plug 'chrisbra/SudoEdit.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
call plug#end()

set termguicolors
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
set foldlevelstart=99

highlight Pmenu guibg=brown gui=bold

noremap <silent> <Home> :SmartHomeKey<Return>
inoremap <silent> <Home> <C-o>:SmartHomeKey<Return>

nnoremap <BS> X

augroup filetypes
    autocmd!
    autocmd FileType python setlocal textwidth=100
augroup end

nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
inoremap <F9> <C-O>za

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

let g:xml_syntax_folding = 1
let g:syntastic_always_populate_loc_list = 1
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_complete_done = 1
let g:LanguageClient_serverCommands = {
\   'rust': ['ra_lsp_server'],
\}
