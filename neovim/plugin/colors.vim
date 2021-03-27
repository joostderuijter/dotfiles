colorscheme gruvbox
function! ColorGruvboxDark()
    set background=dark
    colorscheme gruvbox
endfunction

function! ColorAyuDark()
    set background=dark
    let ayucolor="dark"
    colorscheme ayu
endfunction

function! ColorVimOneLight()
    set background=light
    colorscheme one
endfunction

nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>e1 :call ColorGruvboxDark()<CR>
nnoremap <leader>e2 :call ColorAyuDark()<CR>
nnoremap <leader>e3 :call ColorVimOneLight()<CR>
