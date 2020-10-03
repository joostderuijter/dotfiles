syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set relativenumber
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'matze/vim-move'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader=" "

"Saving stuff
"In order for this to work, add 'stty -ixon' to .bashrc
nnoremap <silent><C-s> :<c-u>update<cr>
inoremap <silent><C-s> <c-o>:update<cr>

"nnoremap <silent><C-N>:set number! relativenumber!<cr>

let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

"Reload vimrc
nnoremap <leader>r :source ~/.vimrc<CR> 

" Fzf
nmap <leader>f :Rg 
nmap <leader>g :GFiles<CR>
nmap <leader>p :Files<CR>
nmap <leader>b :Buffers<CR>

