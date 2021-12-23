set encoding=UTF-8
set number
set nohlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start " Allow backspace in insert mode
set nojoinspaces " No double spaces between sentences
set splitbelow splitright
set laststatus=2
set cursorline
set scrolloff=8
set nowrap
set mouse=a
set list
set ttyfast
set lazyredraw

set clipboard+=unnamedplus

" Change spaces with tabs, set tab with equal 4 spaces
:set tabstop=4
:set shiftwidth=4
:set expandtab

" Make it easier to work with buffers
" http://vim.wikia.com/wiki/Easier_buffer_switching
set hidden
set confirm
" set autowriteall
set wildmenu wildmode=full

set termguicolors
set noshowmode

colorscheme modus-operandi
" let g:modus_green_strings = 1

" colorscheme tokyonight
" let g:tokyonight_style = "day"
" let g:tokyonight_day_brightness = 0.1
