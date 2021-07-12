"Ack ==========================================================
if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif

vnoremap <Leader>av y:Ack! <C-r>=fnameescape(@")<CR><CR>
"cnoreabbrev Ack Ack!
nnoremap <Leader>ag :Ack!<Space>
nnoremap <Leader>af :AckFile!<Space>
nnoremap <Leader>aw :Ack!<Space><C-R><C-W><CR>