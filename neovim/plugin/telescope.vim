lua require("telescope-config")


nnoremap <leader>pf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<cr>

nnoremap <leader>vrc :lua require('telescope-config').search_dotfiles()<CR>
nnoremap <leader>e4 :lua require('telescope.builtin').colorscheme{}<CR>
