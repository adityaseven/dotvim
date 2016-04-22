let g:syntastic_python_checkers = ['flake8']
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_php_checkers=['php']
let g:syntastic_json_checkers=['jsonlint', 'jsonval']
let g:syntastic_twig_checkers=['twiglint']
let g:syntastic_auto_loc_list=0
let g:syntastic_enable_highlighting=1
let g:syntastic_echo_current_error=1

let g:syntastic_mode_map = {'mode': 'passive',
				\ 'active_filetypes': [],
				\ 'passive_filetypes': [] }

let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'
