call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'morhertz/gruvbox'
Plug 'nanotech/jellybeans.vim'
call plug#end()

set encoding=utf-8

" Map tm to run makefiles
map tm :!make<CR>

" set background=dark
colorscheme PaperColor

" Colorscheme changer maps
map tg :colorscheme gruvbox<CR>
map tp :colorscheme PaperColor<CR>
"
" Ale stuff
let g:ale_cpp_cc_executable = 'g++'

let g:airline#extensions#syntastic#enabled = 1
let airline#extensions#syntastic#stl_format_warn = '%W{[%fw(#%w)]}'
let airline#extensions#syntastic#error_symbol = 'E:'
let airline#extensions#syntastic#stl_format_err = '%E{[%fe(#%e)]}'
let airline#extensions#syntastic#warning_symbol = 'W:'

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

set clipboard=unnamedplus
set ruler
set number
syntax on
set visualbell
