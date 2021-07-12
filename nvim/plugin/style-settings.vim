"Cpp enhanced =============================
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" set cursorline
set encoding=UTF-8
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set cursorline

:set tabstop=4
:set shiftwidth=4
:set expandtab

colorscheme default
set background=light


 let g:lightline = {
 \ 'active': {
 \   'left': [ [ 'mode', 'paste'  ],
 \             [ 'gitbranch', 'readonly', 'filename', 'modified'  ] ]
 \ },
 \ 'component_function': {
 \   'gitbranch': 'FugitiveHead'
 \ },
 \ }


function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction
