call plug#begin()

Plug 'PHSix/nvim-hybrid' " theme
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " language parser
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocompletion
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " explorer
Plug 'ryanoasis/vim-devicons' " icons
Plug 'vim-airline/vim-airline' " statusline
call plug#end()

set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

let g:CHADTreeDirArrowExpandable="+"
let g:CHADTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols                                                                                                                              
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = ''

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
vmap <leader>f  <Plug>(coc-format)
nmap <leader>f  <Plug>(coc-format)

nnoremap <leader>] <cmd>CHADopen<cr>

lua << EOF
require('hybrid').setup()
require 'nvim-treesitter.install'.prefer_git = false
require('coc_config')
EOF
