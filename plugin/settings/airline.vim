"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup airline
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
 endif


if !exists('g:airline_powerline_fonts')
  let g:airline_left_sep='>'
  let g:airline_right_sep='<'

   let g:airline_symbols.linenr='LN'
   let g:airline_symbols.paste = 'P'
   let g:airline_symbols.whitespace = '||'
  
   let g:airline_symbols.branch   = '^'
   let g:airline_symbols.readonly = '&'

 endif


let g:airline_powerline_fonts=1

