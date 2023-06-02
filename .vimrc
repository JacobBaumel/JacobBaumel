call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
call plug#end()

" Deoplete stuff
let g:deoplete#enable_at_startup = 1
set completeopt=menu,noinsert
" Or, you could use neovim's virtual virtual text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'virtual'
set encoding=utf-8

" Map tm to run makefiles
map tm :!make<CR>

" telescope stuff
nnoremap tff :Telescope find_files<cr>
nnoremap tfg :Telescope live_grep<cr>

" set background=dark
colorscheme gruvbox

" Colorscheme changer maps
map tg :colorscheme gruvbox<CR>
map tp :colorscheme PaperColor<CR>

map bn :bnext<CR>
map bd :bdelete<CR>
"
" Ale stuff
let g:ale_cpp_cc_executable = 'g++'
"let g:ale_c_build_dir = '/media/jacob/common/code/cpp/test'

let g:airline#extensions#syntastic#enabled = 1
let airline#extensions#syntastic#stl_format_warn = '%W{[%fw(#%w)]}'
let airline#extensions#syntastic#error_symbol = 'E:'
let airline#extensions#syntastic#stl_format_err = '%E{[%fe(#%e)]}'
let airline#extensions#syntastic#warning_symbol = 'W:'

map tar :ALEFindReferences<CR>
map tah :ALEHover<CR>
map tag :ALEGoToDefinition<CR>

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
