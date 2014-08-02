autocmd BufNewFile,BufRead *.bs set filetype=bailey
autocmd BufNewFile,BufRead *.bailey set filetype=bailey
autocmd BufNewFile,BufRead *.baileyjs set filetype=bailey

function! s:BaileyJS()
    if getline(1) =~ '^#!.*\<baileyjs\>'
        set filetype=bailey
    endif
endfunction

autocmd BufNewFile,BufRead * call s:BaileyJS()
