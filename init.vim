lua require('basic')
set background=dark " or light if you want light mode
lua require('plugins')

" plugin setting
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/lint')
lua require('lsp/setup')

" keymap
lua require('keybindings')

" hard time on
let g:hardtime_default_on = 0
let g:list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]

" lint when save
au BufWritePost <buffer> lua require('lint').try_lint()

" Automatically removing all trailing whitespace 
" https://vim.fandom.com/wiki/Remove_unwanted_spaces
au BufWritePre * :%s/\s\+$//e
