call plug#begin('~/.vim/plugged')
"Git
Plug 'tpope/vim-fugitive'
" Generate pairs for (), {} ,[] ,"" ,'' ... etc
Plug 'kana/vim-operator-user'
"File manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Auto fill pairs for symbols like '', "", (), {}, etc..
Plug 'jiangmiao/auto-pairs'
"Quick file search
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Git diff tool like vs code
" Plug 'sindrets/diffview.nvim'
"Quick jump to symbol
Plug 'justinmk/vim-sneak'
"Ag, Ack grepping
Plug 'mileszs/ack.vim'
" Clang formatter
Plug 'rhysd/vim-clang-format'
"VS code like language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Customize buttom line 
Plug 'itchyny/lightline.vim'
" Customize cpp highlight
Plug 'octol/vim-cpp-enhanced-highlight'
" Coment tool
Plug 'preservim/nerdcommenter'
call plug#end()

source ~/.config/nvim/plugin/coc-settings.vim

source ~/.config/nvim/plugin/telescope-settings.vim

source ~/.config/nvim/plugin/style-settings.vim

" Documentation for code
source ~/.config/nvim/plugin/DoxygenToolkit.vim 

source ~/.config/nvim/plugin/nerd-commenter-settings.vim

source ~/.config/nvim/plugin/ack-settings.vim

source ~/.config/nvim/plugin/clang-format-settings.vim

source ~/.config/nvim/plugin/vim-sneak-settings.vim

source ~/.config/nvim/plugin/nerd-tree-settings.vim

