function s:parse_range() abort range
    let result = [a:firstline, a:lastline]
    echo result
endfunction

function range_text_object#range_text_object() abort
    let range = input(':')
    if range == ''
        return
    endif
    let cmd = range . ' call s:parse_range()'
    try
        let range_expr = execute(cmd)[1:]
    catch /^Vim\%((\a\+)\)\=:E/
        echohl ErrorMsg
        echomsg 'Invalid range!'
        echohl None
        return
    endtry
    let [line1, line2] = eval(range_expr)
    " Visually select provided range
    execute 'normal! ' . line1 . 'GV' . line2 . 'G'
endfunction
