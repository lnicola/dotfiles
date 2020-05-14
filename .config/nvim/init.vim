if empty(glob('~/.config/nvim/autoload/plugpac.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plugpac.vim --create-dirs https://raw.githubusercontent.com/bennyyip/plugpac.vim/master/plugpac.vim
  silent !git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
  autocmd VimEnter * PackInstall
endif

call plugpac#begin()
Pack 'airblade/vim-gitgutter'
Pack 'bling/vim-airline'
Pack 'bling/vim-bufferline'
Pack 'scrooloose/nerdtree'
Pack 'Xuyuanp/nerdtree-git-plugin'
Pack 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': {-> system('bash install.sh') } }
Pack 'sukima/xmledit'
Pack 'terryma/vim-multiple-cursors'
Pack 'tpope/vim-commentary'
Pack 'tpope/vim-fugitive'
Pack 'tpope/vim-surround'
Pack 'bradford-smith94/quick-scope'
Pack 'vim-scripts/Smart-Home-Key'
Pack 'chrisbra/SudoEdit.vim'
Pack 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Pack 'Shougo/neosnippet.vim'
Pack 'Shougo/neosnippet-snippets'
Pack 'junegunn/fzf'
call plugpac#end()

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
set nomodeline
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
\   'rust': ['rust-analyzer'],
\}
