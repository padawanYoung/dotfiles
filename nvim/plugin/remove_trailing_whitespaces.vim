function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" Using file extension
autocmd BufWritePre *.* :call <SID>StripTrailingWhitespaces()
autocmd FileAppendPre *.* :call <SID>StripTrailingWhitespaces()
autocmd FilterWritePre *.* :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.* :call <SID>StripTrailingWhitespaces()
