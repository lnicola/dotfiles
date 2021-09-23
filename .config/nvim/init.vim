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
Pack 'neovim/nvim-lspconfig'
Pack 'nvim-lua/completion-nvim'
Pack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Pack 'neovim/nvim-lspconfig'
Pack 'simrat39/rust-tools.nvim'
Pack 'nvim-lua/popup.nvim'
Pack 'nvim-telescope/telescope.nvim'
Pack 'sukima/xmledit'
Pack 'terryma/vim-multiple-cursors'
Pack 'tpope/vim-commentary'
Pack 'tpope/vim-fugitive'
Pack 'tpope/vim-surround'
Pack 'bradford-smith94/quick-scope'
Pack 'vim-scripts/Smart-Home-Key'
Pack 'chrisbra/SudoEdit.vim'
Pack 'junegunn/fzf'
Pack 'easymotion/vim-easymotion'
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

let g:xml_syntax_folding = 1
let g:syntastic_always_populate_loc_list = 1
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:airline_powerline_fonts = 1

lua << EOF
local on_attach = function(client)
    require'completion'.on_attach(client)
end

require('rust-tools').setup({
    server = { on_attach = on_attach }
})

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
EOF

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)

set completeopt=menuone,noinsert,noselect
let g:completion_sorting = "none"
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>

set updatetime=300
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

set signcolumn=yes
