function! neoformat#formatters#typescript#enabled() abort
   return ['tsfmt', 'prettier', 'tslint']
endfunction

function! neoformat#formatters#typescript#tsfmt() abort
    return {
        \ 'exe': 'tsfmt',
        \ 'args': ['--replace', '--baseDir=%:h'],
        \ 'replace': 1
        \ }
endfunction

function! neoformat#formatters#typescript#prettier() abort
    return {
        \ 'exe': 'prettier_d',
        \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
        \ 'stdin': 1
        \ }
endfunction

function! neoformat#formatters#typescript#tslint() abort
    return {
        \ 'exe': 'tslint',
        \ 'args': ['--fix', '-c tslint.json'],
        \ 'replace': 1
        \ }
endfunction
