""" Plugins

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()

""" Custom mappings

let mapleader=" "

nnoremap <leader>er :edit $MYVIMRC<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
