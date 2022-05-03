lua require('basic')
set background=dark " or light if you want light mode
lua require('plugins')

" plugin setting
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/lint')
lua require('plugin-config/line')
lua require('lsp/setup')

" keymap
lua require('keybindings')

" hard time on
let g:hardtime_default_on = 0
let g:list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]

" Automatically removing all trailing whitespace
" https://vim.fandom.com/wiki/Remove_unwanted_spaces
au FileType python,yaml au BufWritePre * :%s/\s\+$//e

" lint when save
au BufWritePost <buffer> lua require('lint').try_lint()

" You can automatically close the tab/vim when nvim-tree is the last window in the tab
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
