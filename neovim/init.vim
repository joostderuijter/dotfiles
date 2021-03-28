""" Plugins

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

""" Lua files

lua require('lspconfig').tsserver.setup{}
lua require('compe-config')
""" Custom mappings

let mapleader=" "

nnoremap <leader>er :edit $MYVIMRC<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

