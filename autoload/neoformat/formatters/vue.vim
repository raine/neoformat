function! neoformat#formatters#vue#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#vue#prettier() abort
    return {
        \ 'exe': 'prettier_d',
        \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'vue'],
        \ 'stdin': 1
        \ }
endfunction
