"Cpp enhanced =============================
" let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
" let g:cpp_class_decl_highlight = 1
" let g:cpp_posix_standard = 1
" let g:cpp_posix_standard = 1
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_experimental_template_highlight = 1
" let g:cpp_concepts_highlight = 1

set encoding=UTF-8
set number
set hlsearch
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

:set tabstop=4
:set shiftwidth=4
:set expandtab

set termguicolors
colorscheme tokyonight

let g:tokyonight_italic_functions = 1
let g:tokyonight_style = "day"
let g:tokyonight_day_brightness = 0.1

set noshowmode

 " let g:lightline = {
 " \ 'colorscheme': 'tokyonight',
 " \ 'active': {
 " \   'left': [ [ 'mode', 'paste'  ],
 " \             [ 'gitbranch', 'readonly', 'filename', 'modified'  ] ]
 " \ },
 " \ 'component_function': {
 " \   'gitbranch': 'FugitiveHead'
 " \ },
 " \ }

nnoremap Y y$| " Make Y behave like other capitals

cno <expr>          <cr>             <sid>wrap_cr()
nno <expr> <silent> n                <sid>wrap_n(1)
nno <expr> <silent> N                <sid>wrap_n(0)
nno        <silent> <plug>(my_nohls) :<c-u>call <sid>set_nohls()<cr>

fu! s:wrap_cr() abort
    if getcmdtype() =~# '[/?]'
        call s:set_hls()
        call feedkeys("\<plug>(my_nohls)", 'i')
    endif
    return "\<cr>"
endfu

fu! s:wrap_n(fwd) abort
    call s:set_hls()
    call feedkeys("\<plug>(my_nohls)", 'i')
    return a:fwd ? 'n' : 'N'
endfu

fu! s:set_hls() abort
    sil! au! my_search
    set hls
endfu

fu! s:set_nohls() abort
    augroup my_search
        au!
        au CursorMoved * set nohls | au! my_search
    augroup END
endfu

