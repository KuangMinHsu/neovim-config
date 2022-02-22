lua require('basic')
set background=dark " or light if you want light mode
lua require('plugins')

" plugin setting
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('lsp/setup')

" keymap
lua require('keybindings')

" hard time on
let g:hardtime_default_on = 1
let g:list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
