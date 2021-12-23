"mappings.vim ==============================================
" In this file stores all general mappings                  |
"===========================================================
"Config Clang-format
map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc,json nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc,json vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc,json map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

"Telescope ============================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Maps Alt-[H,J,K,L] to resizing a window split
map <silent> <A-<> <C-w><
map <silent> <A--> <C-W>-
map <silent> <A-+> <C-W>+
map <silent> <A->> <C-w>>
map <silent> <A-=> <C-w>=

" Use F2 for saving, also in Insert mode
noremap <F2> :update<CR>
vnoremap <F2> <C-C>:update<CR>
inoremap <F2> <C-O>:update<CR>

" Make Y behave like other capitals
nnoremap Y y$|
" Keep cursor position and join next line
" nnoremap J mzJ`z

" Do not lose selection when shifting silewards
xnoremap > >gv
xnoremap < <gv

" Move lines
xnoremap <silent><A-j> :m '>+1<CR>gv=gv
xnoremap <silent><A-k>   :m '<-2<CR>gv=gv

nnoremap <silent><A-j> v:m '>+1<CR>gv=gv<Esc>
nnoremap <silent><A-k>   v:m '<-2<CR>gv=gv<Esc>

inoremap <silent><A-j> <Esc>v:m '>+1<CR>gv=gv<Esc>a
inoremap <silent><A-k>   <Esc>v:m '<-2<CR>gv=gv<Esc>a

" Kep search at the center
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap g* g*zzzv
nnoremap g# g#zzzv
