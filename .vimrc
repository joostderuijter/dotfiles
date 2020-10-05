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
set relativenumber
set cc=0
set clipboard=unnamed
set timeout ttimeoutlen=50
set background=light
set autoread
set ignorecase
set smartcase

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
Plug 'tpope/vim-fugitive'

call plug#end()

colorscheme gruvbox

let mapleader=" "

autocmd BufEnter * silent! lcd %:p:h
"
"Saving stuff
""In order for this to work, add 'stty -ixon' to .bashrc
nnoremap <silent><C-s> :update<cr>
inoremap <silent><C-s> <c-o>:update<cr>

" Gruvbox light / dark switching
nmap <leader>gbl :set background=light<cr>
nmap <leader>gbd :set background=dark<cr>

"Reload vimrc
nnoremap <leader>r :source $vimrc<CR> 

" Fzf
nmap <leader>ps :Rg 
nmap <leader>pf :Files D:\devel<CR>
nmap <C-p> :GFiles<CR>
nmap <leader>b :Buffers<CR>

" Git
nmap <leader>gc :Gcommit<CR>
nmap <leader>ga :Gwrite<CR>
nmap <leader>ga. :Git add .<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gp :Git push<CR>

" Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Svn
nmap <leader>svu :!svn update<cr>
nmap <leader>svst :!svn status<cr>
nmap <leader>svsw :execute '!svn switch "'.input('Enter branch: ').'"'<cr>
nmap <leader>bt :execute '!svn switch "'.$BO_TRUNK.'"'<cr>
nmap <leader>bb :execute '!svn switch "'.$BO_BRANCHES.input('Enter BO branch: ').'"'<cr>
nmap <leader>ft :execute '!svn switch "'.$FO_TRUNK.'"'<cr>
nmap <leader>fb :execute '!svn switch "'.$FO_BRANCHES.input('Enter FO branch: ').'"'<cr>
nmap <leader>svc :execute '!git commit -m "'.input('Enter commit message: ').'"'<cr>
nmap <leader>svl :!svn log --limit 10<CR>

" Edit vimrc
nmap <leader>er :e $VIMRC<CR>

" Reopen last buffer
nnoremap <leader>z :e#<CR>
 
" Window stuff
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ws :wincmd v<bar>:e D:\devel\<CR>
nnoremap <silent><leader>u :UndotreeShow<CR>


