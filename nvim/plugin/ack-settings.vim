"Ack ==========================================================
if executable('rg')
      let g:ackprg = 'rg --vimgrep --smart-case'
endif

"cnoreabbrev Ack Ack!
nnoremap <Leader>ag :Ack!<Space>
nnoremap <Leader>aw :Ack!<Space><C-R><C-W><CR>
