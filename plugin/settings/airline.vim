"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup airline
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_powerline_fonts')
  let g:airline_left_sep='>'
  let g:airline_right_sep='<'
 endif


let g:airline_powerline_fonts = 1
