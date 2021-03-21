let g:airline#extensions#ale#enabled = 1 " Enable integration with airline.

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1

" make sure that python fixers are in this order, ie: causing E302
let g:ale_fixers = {
			\'*': ['remove_trailing_lines', 'trim_whitespace'],
			\'python': ['autoimport', 'isort', 'black'],
			\}
let g:ale_fix_on_save = 1
