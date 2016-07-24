" Searching word with sdcv at Vim.

function! sdcv#SearchWord()
    let expl=system('sdcv -n ' .
                \  expand("<cword>"))
    windo if
                \ expand("%")=="diCt-tmp" |
                \ q!|endif
    12sp diCt-tmp
    setlocal buftype=nofile bufhidden=hide noswapfile
    nnoremap <buffer> q :Sayonara<CR>
    1s/^/\=expl/
    1
endfunction

command! -nargs=* SD call sdcv#SearchWord()
